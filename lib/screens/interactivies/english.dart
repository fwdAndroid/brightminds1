import 'package:brightminds/screens/extras/extra_class.dart';
import 'package:brightminds/utils/colors.dart';
import 'package:flutter/material.dart';

class English extends StatefulWidget {
  const English({super.key});

  @override
  State<English> createState() => _EnglishState();
}

class _EnglishState extends State<English> {
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
                              url: "https://interactive.ddns.me/Alpha/",
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
                              url: "https://interactive.ddns.me/animals/",
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
                              url: "https://interactive.ddns.me/colors/",
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
                              url: "https://interactive.ddns.me/numbers/",
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
                              url: "https://interactive.ddns.me/shapes/",
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
        ),
      ],
    );
  }
}
