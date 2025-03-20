import 'package:brightminds/screens/categories/category_page_3.dart';
import 'package:brightminds/screens/extra_activity_greek/greek_extra_tab.dart';
import 'package:brightminds/screens/interactivies/greek.dart';
import 'package:brightminds/utils/colors.dart';

import 'package:flutter/material.dart';

class MainDashboardGreek extends StatefulWidget {
  const MainDashboardGreek({super.key});

  @override
  State<MainDashboardGreek> createState() => _MainDashboardGreekState();
}

class _MainDashboardGreekState extends State<MainDashboardGreek> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Pick your grade",
          style: TextStyle(
            color: Colors.green,
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
                "Επιλέξτε Ακαδημαϊκό Επίπεδο",
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
              SizedBox(height: 17),
              //Pre Kind

              //6th Grade
              Padding(
                padding: EdgeInsets.all(8),
                child: Container(
                  color: Color(0xfff3ffd1),
                  child: SizedBox(
                    height: 140,
                    width: 375,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ListTile(
                          title: Text(
                            "Επίπεδο 6",
                            style: TextStyle(
                                color: Color(
                                  0xffb1cd61,
                                ),
                                fontSize: 17,
                                fontWeight: FontWeight.w600),
                          ),
                          subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "(Ages 11 - 12)",
                                  style: TextStyle(
                                      color: Color(
                                        0xffb1cd61,
                                      ),
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
                                                GreekExtraTab()));
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
                                  backgroundColor: Color(0xffb1cd61)),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (builder) =>
                                            CategoryPage3(level: "Επίπεδο 6")));
                              },
                              child: Text(
                                "Resume",
                                style: TextStyle(
                                    color: Colors.white,
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
                "Περιστρέψτε το τηλέφωνό σας για πλήρη εμφάνιση",
                style: TextStyle(
                  color: mainColor,
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
              ),
              Greek()
            ],
          ),
        ),
      ),
    );
  }
}
