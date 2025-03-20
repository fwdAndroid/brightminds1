import 'dart:io';

import 'package:brightminds/screens/greek/main_dashboard_greek.dart';
import 'package:brightminds/screens/main_dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SelectLanguage extends StatefulWidget {
  const SelectLanguage({super.key});

  @override
  State<SelectLanguage> createState() => _SelectLanguageState();
}

class _SelectLanguageState extends State<SelectLanguage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          final shouldPop = await _showExitDialog(context);
          return shouldPop ?? false;
        },
        child: Scaffold(
          body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/pngtree-white-and-green-abstract-background-image_761746.jpg",),fit: BoxFit.cover)
                  
            ),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Select Language',
                    style: TextStyle(
                        color: Color(
                          0xffb1cd61,
                        ),
                        fontSize: 22,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (builder) => MainDashboard()));
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
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
            
                ///Greeek
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (builder) => MainDashboardGreek()));
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
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  Future<bool?> _showExitDialog(BuildContext context) {
    return showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Exit App'),
        content: Text('Do you want to exit the app?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: Text('No'),
          ),
          TextButton(
            onPressed: () {
              if (Platform.isAndroid) {
                SystemNavigator.pop(); // For Android
              } else if (Platform.isIOS) {
                exit(0); // For iOS
              }
            },
            child: Text('Yes'),
          ),
        ],
      ),
    );
  }
}
