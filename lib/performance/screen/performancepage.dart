import 'package:flutter/material.dart';
import 'package:performance_tracking/performance/widget/pilihan.dart';
import 'identitas.dart';
import 'package:flutter/cupertino.dart';
import 'body.dart';

class PerformancePage extends StatelessWidget {
  const PerformancePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blue,
        title: Text(
          "Laporan Akademik",
          style: TextStyle(
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 20),
        ),
        centerTitle: true,
      ),
      body: Body(
          // children: [
          //   identitas(),
          //   Pilihan(),
          // ],
          ),
      //
    );
  }
}