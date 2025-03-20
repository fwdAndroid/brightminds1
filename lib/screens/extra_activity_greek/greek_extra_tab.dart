import 'package:brightminds/screens/extra_activity_greek/basic_greek.dart';
import 'package:brightminds/screens/extra_activity_greek/inter_greek.dart';
import 'package:brightminds/utils/colors.dart';
import 'package:flutter/material.dart';

class GreekExtraTab extends StatefulWidget {
  const GreekExtraTab({super.key});

  @override
  State<GreekExtraTab> createState() => _GreekExtraTabState();
}

class _GreekExtraTabState extends State<GreekExtraTab> {
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
                text: "Básico",
              ),
              Tab(text: "Διάμεσος"),
            ],
          ),
          title: Text(
            'Επιπλέον δραστηριότητες',
            style: TextStyle(color: colorWhite),
          ),
        ),
        body: TabBarView(
          children: [BasicGreekExtraActivity(), InterGreek()],
        ),
      ),
    );
  }
}
