import 'package:flutter/material.dart';
import 'package:performance_tracking/performance/widget/KHSPage.dart';
import 'package:performance_tracking/performance/widget/detailpage.dart';
import 'performance/widget/performancepage.dart';
import 'performance/widget/khs.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: KhsPage(),
    );
  }
}
