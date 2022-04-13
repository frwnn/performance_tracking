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

import 'package:performance_tracking/performance/component/unduh_laporan.dart';
import 'package:performance_tracking/performance/component/percentage.dart';
import 'package:performance_tracking/performance/component/identitas.dart';

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
              "Laporan Kinerja",
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
          UnduhLaporan(),
        ],
      ),
      //
    );
  }
}
