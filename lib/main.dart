import 'package:flutter/material.dart';
import 'package:performance_tracking/page/percentagepage.dart';
import 'package:performance_tracking/page/quiz_check.dart';
import 'package:performance_tracking/performance/widget/percentage.dart';
import 'page/performancepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: quizChecker(),
    );
  }
}
