import 'package:flutter/material.dart';
import 'package:performance_tracking/performance/widget/percentagepage.dart';
import 'performance/widget/performancepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PercentagePage(),
    );
  }
}
