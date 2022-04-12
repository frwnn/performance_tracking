import 'package:flutter/material.dart';
import 'package:performance_tracking/performance/screen/KHSPage.dart';
import 'package:performance_tracking/performance/screen/detailpage.dart';
import 'performance/screen/performancepage.dart';
import 'performance/component/khs.dart';

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
