import 'dart:ui';

import 'package:brightminds/screens/interactivies/english.dart';
import 'package:brightminds/screens/interactivies/greek.dart';
import 'package:flutter/material.dart';

class MainActivity extends StatefulWidget {
  const MainActivity({super.key});

  @override
  State<MainActivity> createState() => _MainActivityState();
}

class _MainActivityState extends State<MainActivity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (builder) => English()));
            },
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Container(
                color: Color(0xfff3ffd1),
                child: SizedBox(
                  height: 100,
                  width: 375,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ListTile(
                        title: Text(
                          "English",
                          style: TextStyle(
                              color: Color(
                                0xffb1cd61,
                              ),
                              fontSize: 17,
                              fontWeight: FontWeight.w600),
                        ),
                        trailing: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                fixedSize: Size(100, 43),
                                backgroundColor: Color(0xffb1cd61)),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (builder) => English()));
                            },
                            child: Text(
                              "Start",
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
          ),

          ///Greeek
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (builder) => Greek()));
            },
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Container(
                color: Color(0xfff3ffd1),
                child: SizedBox(
                  height: 100,
                  width: 375,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ListTile(
                        title: Text(
                          "Greek",
                          style: TextStyle(
                              color: Color(
                                0xffb1cd61,
                              ),
                              fontSize: 17,
                              fontWeight: FontWeight.w600),
                        ),
                        trailing: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                fixedSize: Size(100, 43),
                                backgroundColor: Color(0xffb1cd61)),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (builder) => Greek()));
                            },
                            child: Text(
                              "Start",
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
          ),
        ],
      ),
    );
  }
}
