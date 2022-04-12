import 'package:flutter/material.dart';
import 'package:performance_tracking/performance/widget/grafik.dart';
import 'package:performance_tracking/performance/widget/identitas.dart';
import 'package:performance_tracking/performance/widget/khs.dart';
import 'package:performance_tracking/performance/widget/khs2.dart';
import 'package:performance_tracking/performance/widget/performancepage.dart';

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
          InkWell(
            child: Container(
              width: 160,
              height: 120,
              decoration: BoxDecoration(
                  color: Colors.red,
                  border: Border.all(
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PerformancePage(),
                  ));
            },
          ),
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
