import 'package:brightminds/screens/extras/extra_class.dart';
import 'package:flutter/material.dart';

class InterGreek extends StatefulWidget {
  const InterGreek({super.key});

  @override
  State<InterGreek> createState() => _InterGreekState();
}

class _InterGreekState extends State<InterGreek> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
                                url: "https://51.68.199.51/Extrasgr/Science/",
                              )));
                },
                child: SizedBox(
                    width: 150,
                    height: 150,
                    child: Card(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/science.png"),
                          Text("Επιστήμη")
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
                                url: "https://51.68.199.51/Extrasgr/Geography/",
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
                            "assets/geo.jpeg",
                            height: 100,
                          ),
                          Text("Γεωγραφία")
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
                                    "https://51.68.199.51/Extrasgr/multichoice/",
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
                            "assets/multichoice.png",
                            height: 100,
                          ),
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
                                url: "https://51.68.199.51/Extrasgr/Words/",
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
                            "assets/w.jpeg",
                            height: 100,
                          ),
                          Text("Λόγια")
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
                                    "https://51.68.199.51/Extrasgr/mathematics/",
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
                            "assets/math.png",
                            height: 100,
                          ),
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
                                    "https://51.68.199.51/Extrasgr/mathematics/",
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
                            "assets/c.jpeg",
                            height: 100,
                          ),
                          Text(
                            "Μαθηματικά",
                            textAlign: TextAlign.center,
                          )
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
                                url: "https://math.merakisoft.eu/gm/",
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
                            "assets/Mathematics Gr.png",
                            height: 100,
                          ),
                          Text("Γενικά Μαθηματικά")
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
                                url: "https://math.merakisoft.eu/g/",
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
                            "assets/Geometry Gr.png",
                            height: 100,
                          ),
                          Text("Γεωμετρία")
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
                                    "https://51.68.199.51/Extrasgr/mathematics/",
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
                          Text("Ορθογραφία")
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
                                url: "https://math.merakisoft.eu/fractions/",
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
                          Text(
                            "Μαθηματικά",
                            textAlign: TextAlign.center,
                          )
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
