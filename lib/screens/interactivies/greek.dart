import 'package:brightminds/screens/extras/extra_class.dart';
import 'package:brightminds/utils/colors.dart';
import 'package:flutter/material.dart';

class Greek extends StatefulWidget {
  const Greek({super.key});

  @override
  State<Greek> createState() => _GreekState();
}

class _GreekState extends State<Greek> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(8),
          child: Container(
            color: thirdColor,
            child: ListTile(
              leading: Image.asset(
                "assets/alphabet.jpeg",
                height: 40,
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (builder) => ExtraClass(
                              url: "https://interactive.ddns.me/Gr/Alpha/",
                            )));
              },
              title: Text(
                "Alpha",
                style: TextStyle(
                    color: secondColor,
                    fontSize: 17,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8),
          child: Container(
            color: thirdColor,
            child: ListTile(
              leading: Image.asset(
                "assets/animals.jpeg",
                height: 40,
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (builder) => ExtraClass(
                              url: "https://interactive.ddns.me/Gr/Animals/",
                            )));
              },
              title: Text(
                "Animals",
                style: TextStyle(
                    color: secondColor,
                    fontSize: 17,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8),
          child: Container(
            color: thirdColor,
            child: ListTile(
              leading: Image.asset(
                "assets/colors.jpeg",
                height: 40,
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (builder) => ExtraClass(
                              url: "https://interactive.ddns.me/Gr/Colors/",
                            )));
              },
              title: Text(
                "Colors",
                style: TextStyle(
                    color: secondColor,
                    fontSize: 17,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8),
          child: Container(
            color: thirdColor,
            child: ListTile(
              leading: Image.asset(
                "assets/math.jpeg",
                height: 40,
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (builder) => ExtraClass(
                              url: "https://interactive.ddns.me/fgma/",
                            )));
              },
              title: Text(
                "Math",
                style: TextStyle(
                    color: secondColor,
                    fontSize: 17,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8),
          child: Container(
            color: thirdColor,
            child: ListTile(
              leading: Image.asset(
                "assets/logic.jpeg",
                height: 40,
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (builder) => ExtraClass(
                              url: "https://interactive.ddns.me/logic/",
                            )));
              },
              title: Text(
                "Logic",
                style: TextStyle(
                    color: secondColor,
                    fontSize: 17,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8),
          child: Container(
            color: thirdColor,
            child: ListTile(
              leading: Image.asset(
                "assets/numbers.jpeg",
                height: 40,
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (builder) => ExtraClass(
                              url: "https://interactive.ddns.me/Gr/Numbers/",
                            )));
              },
              title: Text(
                "Numbers",
                style: TextStyle(
                    color: secondColor,
                    fontSize: 17,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8),
          child: Container(
            color: thirdColor,
            child: ListTile(
              leading: Image.asset(
                "assets/shapes.jpeg",
                height: 40,
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (builder) => ExtraClass(
                              url: "https://interactive.ddns.me/Gr/Shapes/",
                            )));
              },
              title: Text(
                "Shapes",
                style: TextStyle(
                    color: secondColor,
                    fontSize: 17,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
        ), //Change
      ],
    );
  }
}
