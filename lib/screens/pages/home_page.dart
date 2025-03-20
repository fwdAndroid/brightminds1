import 'package:brightminds/screens/categories/category_page_3.dart';

import 'package:brightminds/screens/extra_activity_english/grade_six_extra_activity.dart';
import 'package:brightminds/screens/interactivies/english.dart';

import 'package:brightminds/utils/colors.dart';

import 'package:flutter/material.dart';

class HomePAges extends StatefulWidget {
  const HomePAges({super.key});

  @override
  State<HomePAges> createState() => _HomePAgesState();
}

class _HomePAgesState extends State<HomePAges> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorWhite,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: colorWhite,
        elevation: 0,
        title: Text(
          "Pick your grade",
          style: TextStyle(
            color: mainColor,
            fontWeight: FontWeight.bold,
            fontSize: 17,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Select Academic Level.",
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
              SizedBox(height: 17),
              //Pre Kind

              //5th Grade
              Padding(
                padding: EdgeInsets.all(8),
                child: Container(
                  color: thirdColor,
                  child: SizedBox(
                    height: 140,
                    width: 375,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ListTile(
                          title: Text(
                            "Level 6",
                            style: TextStyle(
                                color: secondColor,
                                fontSize: 17,
                                fontWeight: FontWeight.w600),
                          ),
                          subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "(Ages 11 - 12)",
                                  style: TextStyle(
                                      color: mainColor,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700),
                                ),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      fixedSize: Size(140, 43),
                                      backgroundColor: secondColor),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (builder) =>
                                                SixGradeExtraActivity()));
                                  },
                                  child: Text(
                                    "Extra Activity",
                                    style: TextStyle(color: colorWhite),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ]),
                          trailing: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  fixedSize: Size(140, 43),
                                  backgroundColor: secondColor),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (builder) =>
                                            CategoryPage3(level: "Level 6")));
                              },
                              child: Text(
                                "Resume",
                                style: TextStyle(
                                    color: colorWhite,
                                    fontWeight: FontWeight.bold),
                              )),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Text(
                "Interactive Education",
                style: TextStyle(
                  color: mainColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              ),
              Text(
                "Rotate your phone for full display",
                style: TextStyle(
                  color: mainColor,
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
              ),
              English()
            ],
          ),
        ),
      ),
    );
  }
}
