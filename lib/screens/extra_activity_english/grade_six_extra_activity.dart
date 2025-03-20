import 'package:brightminds/screens/extra_activity_english/basic_extra_activities.dart';
import 'package:brightminds/screens/extra_activity_english/intermediate_extra_actvities.dart';
import 'package:brightminds/utils/colors.dart';
import 'package:flutter/material.dart';

class SixGradeExtraActivity extends StatefulWidget {
  const SixGradeExtraActivity({super.key});

  @override
  State<SixGradeExtraActivity> createState() => _SixGradeExtraActivityState();
}

class _SixGradeExtraActivityState extends State<SixGradeExtraActivity> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: colorWhite),
          backgroundColor: mainColor,
          bottom: TabBar(
            labelColor: colorWhite,
            tabs: [
              Tab(
                text: "Basic",
              ),
              Tab(text: "Intermediate"),
            ],
          ),
          title: Text(
            'Extra Activities',
            style: TextStyle(color: colorWhite),
          ),
        ),
        body: TabBarView(
          children: [BasicExtraActivities(), IntermediateExtraActvities()],
        ),
      ),
    );
  }
}
