import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:video_player/video_player.dart';

class CategoryDetail extends StatefulWidget {
  final String categoryName;
  final String level;

  const CategoryDetail({
    super.key,
    required this.categoryName,
    required this.level,
  });

  @override
  State<CategoryDetail> createState() => _CategoryDetailState();
}

class _CategoryDetailState extends State<CategoryDetail> {
  late AudioPlayer _audioPlayer;
  VideoPlayerController? _videoController;
  List<Map<String, dynamic>> exercises = [];
  PageController _pageController = PageController();
  bool isPlaying = false;

  @override
  void initState() {
    super.initState();
    _audioPlayer = AudioPlayer();
    fetchData();
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    _videoController?.dispose();
    _pageController.dispose();
    super.dispose();
  }

  int? extractLeadingNumber(String str) {
    final regex = RegExp(r'^(\d+)');
    final match = regex.firstMatch(str);
    return match != null ? int.parse(match.group(0)!) : null;
  }

  Future<void> fetchData() async {
    var snapshot = await FirebaseFirestore.instance.collection("letters").get();
    var data = snapshot.docs;

    if (data.isNotEmpty) {
      var uniqueExercises = <String, Map<String, dynamic>>{};

      for (var document in data) {
        var documentData = document.data() as Map<String, dynamic>;
        var documentExercises = documentData['exercises'] as List<dynamic>;

        for (var exercise in documentExercises) {
          if (exercise['levelSubCategory'] == widget.categoryName &&
              exercise['levelCategory'] == widget.level) {
            String uniqueKey =
                exercise['characterName'] ?? ''; // Unique identifier
            uniqueExercises[uniqueKey] = exercise as Map<String, dynamic>;
          }
        }
      }

      var tempExercises = uniqueExercises.values.toList();

      // Sorting exercises by character name
      tempExercises.sort((a, b) {
        String nameA = (a['characterName'] ?? '').toLowerCase();
        String nameB = (b['characterName'] ?? '').toLowerCase();

        int? numA = extractLeadingNumber(nameA);
        int? numB = extractLeadingNumber(nameB);

        if (numA != null && numB != null) {
          return numA.compareTo(numB);
        } else if (numA != null) {
          return -1;
        } else if (numB != null) {
          return 1;
        }
        return nameA.compareTo(nameB);
      });

      setState(() {
        exercises = tempExercises;
        if (exercises.isNotEmpty) {
          _playCurrentMedia(0);
        }
      });
    }
  }

  void _initializeVideoPlayer(String url) {
    _videoController?.dispose();
    _videoController = VideoPlayerController.network(url)
      ..initialize().then((_) {
        setState(() {});
        _videoController!.play();
      }).catchError((error) {
        setState(() {
          _videoController = null; // Reset on error
        });
      });
  }

  void _playCurrentMedia(int index) async {
    if (index < 0 || index >= exercises.length) return;

    var currentMedia = exercises[index];

    await _audioPlayer.stop(); // Stop previous audio before playing a new one
    await _audioPlayer.seek(Duration.zero); // Reset position

    if (currentMedia['mediaType'] == "audio") {
      _videoController?.dispose();
      _videoController = null;

      try {
        await _audioPlayer.setUrl(currentMedia['audioURL']);
        await _audioPlayer.play();
        setState(() {
          isPlaying = true;
        });
      } catch (error) {
        setState(() {
          isPlaying = false;
        });
      }
    } else if (currentMedia['mediaType'] == "video") {
      _audioPlayer.stop();
      _initializeVideoPlayer(currentMedia['audioURL']);
      setState(() {
        isPlaying = true;
      });
    }
  }

  void _moveToPreviousPage() {
    if (_pageController.page! > 0) {
      _pageController.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void _moveToNextPage() {
    if (_pageController.page! < exercises.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.categoryName,
          style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color(0xFFB1CD61),
        centerTitle: true,
      ),
      body: exercises.isEmpty
          ? const Center(child: CircularProgressIndicator())
          : Column(
              children: [
                Expanded(
                  child: PageView.builder(
                    controller: _pageController,
                    itemCount: exercises.length,
                    onPageChanged: (index) {
                      _playCurrentMedia(index);
                    },
                    itemBuilder: (context, index) {
                      var currentMedia = exercises[index];
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          currentMedia['mediaType'] == "audio"
                              ? ClipRRect(
                                  borderRadius: BorderRadius.circular(16),
                                  child: Image.network(
                                    currentMedia['photoURL'] ?? '',
                                    height: 300,
                                    width: 300,
                                    fit: BoxFit.cover,
                                    errorBuilder:
                                        (context, error, stackTrace) =>
                                            const Icon(Icons.image, size: 200),
                                  ),
                                )
                              : _videoController != null &&
                                      _videoController!.value.isInitialized
                                  ? AspectRatio(
                                      aspectRatio:
                                          _videoController!.value.aspectRatio,
                                      child: VideoPlayer(_videoController!),
                                    )
                                  : const Center(
                                      child: Text(
                                        "Loading Please Wait",
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.red),
                                      ),
                                    ),
                          const SizedBox(height: 16),
                          Center(
                            child: Text(
                              currentMedia['characterName'] ?? 'Unknown',
                              textAlign: TextAlign.center,
                              style: const TextStyle(fontSize: 24),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: _moveToPreviousPage,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 12),
                        ),
                        child: const Text(
                          "Back",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: _moveToNextPage,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 12),
                        ),
                        child: const Text(
                          "Next",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
    );
  }
}
