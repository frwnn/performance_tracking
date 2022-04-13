import 'package:flutter/material.dart';
import 'package:performance_tracking/performance/component/coba.dart';
import 'package:performance_tracking/performance/component/coba.dart';
import 'package:performance_tracking/performance/component/coba2.dart';
import 'package:performance_tracking/performance/component/identitas.dart';
import 'package:performance_tracking/performance/component/grafik.dart';

import 'package:performance_tracking/performance/screen/performancepage.dart';

class KhsPage extends StatefulWidget {
  const KhsPage({Key? key}) : super(key: key);

  @override
  State<KhsPage> createState() => _KhsPageState();
}

class _KhsPageState extends State<KhsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: ListView(
        children: [
          identitas(),
          SizedBox(
            height: 20,
          ),
          Grafik(),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Coba(),
              Coba2(),
            ],
          ),
        ],
      ),
    );
  }
}
