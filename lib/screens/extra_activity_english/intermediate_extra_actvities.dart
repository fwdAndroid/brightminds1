import 'package:brightminds/screens/extras/extra_class.dart';
import 'package:flutter/material.dart';

class IntermediateExtraActvities extends StatefulWidget {
  const IntermediateExtraActvities({super.key});

  @override
  State<IntermediateExtraActvities> createState() =>
      _IntermediateExtraActvitiesState();
}

class _IntermediateExtraActvitiesState
    extends State<IntermediateExtraActvities> {
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
                                    "https://interactive.ddns.me/Extras/alphamem/index.html",
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
                          Text("Alphamen")
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
                                    "https://interactive.ddns.me/Extras/cans/index.html",
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
                            "assets/Cans.png",
                            height: 100,
                          ),
                          Text("CNN")
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
                                    "https://interactive.ddns.me/Extras/fruitmem/index.html",
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
                            "assets/guess the fruit.png",
                            height: 100,
                          ),
                          Text("Fruits")
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
                                    "https://interactive.ddns.me/Extras/math/maths.html",
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
                            "assets/Mathematics.png",
                            height: 100,
                          ),
                          Text("Mathmetics")
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
                                    "https://interactive.ddns.me/Extras/memory/",
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
                            "assets/Memory.png",
                            height: 100,
                          ),
                          Text("Memory")
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
                                    "https://interactive.ddns.me/Extras/word/word.html",
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
                            "assets/word.png",
                            height: 100,
                          ),
                          Text("Word")
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
                                    "https://interactive.ddns.me/Extras/geometry/index.html",
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
                            "assets/Geometry.png",
                            height: 100,
                          ),
                          Text("Geometry")
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
