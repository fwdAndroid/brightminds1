import 'package:brightminds/screens/categories/category_detail.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class CategoryPage3 extends StatefulWidget {
  final String level;
  CategoryPage3({super.key, required this.level});

  @override
  State<CategoryPage3> createState() => _CategoryPage3State();
}

class _CategoryPage3State extends State<CategoryPage3> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.level),
        ),
        body: StreamBuilder(
          stream: FirebaseFirestore.instance
              .collection("categories")
              .where("level", isEqualTo: widget.level)
              .snapshots(),
          builder:
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            // Error handling
            if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));
            }

            // Loading state
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            }

            // If no data is found
            var data = snapshot.data!.docs;
            if (data.isEmpty) {
              return const Center(
                child: Text('No Categories Available'),
              );
            }
            data.sort((a, b) {
              var nameA = a['categoryName'].toString().toLowerCase();
              var nameB = b['categoryName'].toString().toLowerCase();
              return nameA.compareTo(nameB);
            });

            return LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                // Dynamically calculate the number of columns based on screen width
                // Ensure at least 3 columns
                int columns = (constraints.maxWidth / 300).floor();
                if (columns < 2) columns = 2; // Ensure minimum 3 items per row

                return SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GridView.builder(
                      shrinkWrap: true, // Make GridView shrink to fit content
                      physics:
                          NeverScrollableScrollPhysics(), // Disable GridView's internal scroll
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: columns,
                        crossAxisSpacing: 8.0,
                        mainAxisSpacing: 8.0,
                      ),
                      itemCount: data.length,
                      itemBuilder: (BuildContext context, int index) {
                        // Safely parse Firestore document data
                        var documentData =
                            data[index].data() as Map<String, dynamic>;
                        var categoryName =
                            documentData['categoryName'] ?? 'N/A';
                        var photoURL = documentData['photoURL'] ?? '';
                        var level = documentData['level'] ?? 'N/A';
                        var audioUrl = documentData['audioURL'] ?? '';
                        var mediaType = documentData['mediaType'] ?? "";

                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (builder) => CategoryDetail(
                                        categoryName: categoryName,
                                        level: level)));
                            // Handle navigation or actions here
                            print('Category Selected: $categoryName');
                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            elevation: 4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                // Display image if available, otherwise show a placeholder
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: photoURL.isNotEmpty
                                      ? Image.network(
                                          photoURL,
                                          height: 100,
                                          width: 120,
                                          fit: BoxFit.cover,
                                        )
                                      : const Icon(
                                          Icons.image,
                                          size: 120,
                                          color: Colors.grey,
                                        ),
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  categoryName,
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                // const SizedBox(height: 4),
                                // Text(
                                //   "Level: $level",
                                //   style: const TextStyle(
                                //     color: Colors.grey,
                                //     fontSize: 14,
                                //   ),
                                // ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
