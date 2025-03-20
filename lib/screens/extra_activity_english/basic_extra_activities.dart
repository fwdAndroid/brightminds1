import 'package:brightminds/screens/extras/extra_class.dart';
import 'package:flutter/material.dart';

class BasicExtraActivities extends StatefulWidget {
  const BasicExtraActivities({super.key});

  @override
  State<BasicExtraActivities> createState() => _BasicExtraActivitiesState();
}

class _BasicExtraActivitiesState extends State<BasicExtraActivities> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => ExtraClass(
                                url:
                                    "https://interactive.ddns.me/Extras/animals/index.html",
                              )));
                },
                child: SizedBox(
                    width: 150,
                    height: 150,
                    child: Card(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/animals.jpeg",
                            height: 100,
                          ),
                          Text("Animals")
                        ],
                      ),
                    )),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => ExtraClass(
                                url:
                                    "https://interactive.ddns.me/Extras/alphabet/HearingAlphabets.html",
                              )));
                },
                child: SizedBox(
                    width: 150,
                    height: 150,
                    child: Card(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/Alphamem.png",
                            height: 100,
                          ),
                          Text("Alphabet")
                        ],
                      ),
                    )),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => ExtraClass(
                                url:
                                    "https://interactive.ddns.me/Extras/acn/colores.html",
                              )));
                },
                child: SizedBox(
                    width: 150,
                    height: 150,
                    child: Card(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/colors.jpeg",
                            height: 100,
                          ),
                          Text("Colors")
                        ],
                      ),
                    )),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => ExtraClass(
                                url:
                                    "https://interactive.ddns.me/Extras/numbers/numeros.html",
                              )));
                },
                child: SizedBox(
                    width: 150,
                    height: 150,
                    child: Card(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/numbers.jpeg",
                            height: 100,
                          ),
                          Text("Numbers")
                        ],
                      ),
                    )),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => ExtraClass(
                                url:
                                    "https://interactive.ddns.me/Extras/shuffle/ShuffleCups.html",
                              )));
                },
                child: SizedBox(
                    width: 150,
                    height: 150,
                    child: Card(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.abc,
                            size: 50,
                          ),
                          Text("Shuffle")
                        ],
                      ),
                    )),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => ExtraClass(
                                url:
                                    "https://interactive.ddns.me/Extras/typing/typing.html",
                              )));
                },
                child: SizedBox(
                    width: 150,
                    height: 150,
                    child: Card(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.abc,
                            size: 50,
                          ),
                          Text("Typing")
                        ],
                      ),
                    )),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => ExtraClass(
                                url:
                                    "https://interactive.ddns.me/Extras/math4kids/math.html",
                              )));
                },
                child: SizedBox(
                    width: 150,
                    height: 150,
                    child: Card(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/math.jpeg",
                            height: 100,
                          ),
                          Text("Math")
                        ],
                      ),
                    )),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => ExtraClass(
                                url:
                                    "https://interactive.ddns.me/Extras/veg/index.html",
                              )));
                },
                child: SizedBox(
                    width: 150,
                    height: 150,
                    child: Card(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/Vegetables.png",
                            height: 100,
                          ),
                          Text("Vegetables")
                        ],
                      ),
                    )),
              ),
            ],
          )
        ],
      ),
    );
  }
}
