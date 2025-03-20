import 'package:brightminds/screens/extras/extra_class.dart';
import 'package:flutter/material.dart';

class BasicGreekExtraActivity extends StatefulWidget {
  const BasicGreekExtraActivity({super.key});

  @override
  State<BasicGreekExtraActivity> createState() =>
      _BasicGreekExtraActivityState();
}

class _BasicGreekExtraActivityState extends State<BasicGreekExtraActivity> {
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
                                url: "https://alphabet.merakisoft.eu",
                              )));
                },
                child: SizedBox(
                    width: 150,
                    height: 150,
                    child: Card(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/Alphamem Gr.png"),
                          Text("Αλφάβητο")
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
                                url: "https://animals.merakisoft.eu/",
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
                          Text("Ζώα")
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
                                url: "https://colors.merakisoft.eu",
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
                          Text("Χρωματιστά")
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
                                url: "https://vegetables.merakisoft.eu/",
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
                            "assets/Vegetables Gr.png",
                            height: 100,
                          ),
                          Text("Λαχανικά")
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
                                url: "https://fruits.merakisoft.eu",
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
                            "assets/guess the fruit Gr.png",
                            height: 120,
                          ),
                          Text("Φρούτα")
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
                                url: "https://letterguess.merakisoft.eu",
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
                            "assets/Spelling.png",
                            height: 100,
                          ),
                          Text("Επιστολή εικασία")
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
                                url: "https://wordguess.merakisoft.eu",
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
                            "assets/word Gr.png",
                            height: 100,
                          ),
                          Text(
                            "Πληκτρολογώντας λέξεις",
                            textAlign: TextAlign.center,
                          )
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
                                url: "https://memory.merakisoft.eu/1",
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
                            "assets/Memory Gr.png",
                            height: 100,
                          ),
                          Text("Μνήμη 1")
                        ],
                      ),
                    )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
