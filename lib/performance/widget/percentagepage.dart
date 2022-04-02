import 'package:flutter/material.dart'
    show
        AppBar,
        BuildContext,
        Colors,
        Column,
        FontWeight,
        Key,
        MainAxisAlignment,
        Row,
        Scaffold,
        StatelessWidget,
        Text,
        TextStyle,
        Widget;
import 'percentage.dart';
import 'identitas.dart';

class PercentagePage extends StatelessWidget {
  const PercentagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blue,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Percentage Tracking",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          identitas(),
          Percentage(),
        ],
      ),
      //
    );
  }
}
