import 'package:flutter/material.dart';
import 'package:performance_tracking/performance/widget/grafik.dart';
import 'package:performance_tracking/performance/widget/identitas.dart';
import 'package:performance_tracking/performance/widget/khs.dart';
import 'package:performance_tracking/performance/widget/khs2.dart';

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
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Laporan Akademik",
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 20),
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          identitas(),
          SizedBox(
            height: 20,
          ),
          MyHomePage(),
          SizedBox(
            height: 20,
          ),
          Stack(
            children: [KHS(), KHSS()],
          )
        ],
      ),
    );
  }
}
