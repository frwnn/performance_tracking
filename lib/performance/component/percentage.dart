import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:performance_tracking/performance/screen/detailpage.dart';

class Percentage extends StatelessWidget {
  const Percentage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 60, bottom: 15),
          child: Row(
            children: [
              LinearPercentIndicator(
                padding: const EdgeInsets.only(top: 10, left: 63),
                width: 336,
                lineHeight: 30,
                percent: 0.30,
                center: Text(
                  "30.0%",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                linearStrokeCap: LinearStrokeCap.roundAll,
                progressColor: Colors.yellow,
                backgroundColor: Colors.indigo[300],
                animation: true,
                animationDuration: 5000,
              ),
            ],
          ),
        ),
        Text(
          "CIVICS",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        ),
        InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => DetailPage()));
          },
          child: Container(
            margin: EdgeInsets.only(top: 20, bottom: 15),
            child: Row(
              children: [
                LinearPercentIndicator(
                  padding: const EdgeInsets.only(top: 5, left: 63),
                  width: 336,
                  lineHeight: 30,
                  percent: 0.50,
                  center: Text(
                    "50.0%",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  linearStrokeCap: LinearStrokeCap.roundAll,
                  progressColor: Colors.redAccent,
                  backgroundColor: Colors.indigo[300],
                  animation: true,
                  animationDuration: 5000,
                ),
              ],
            ),
          ),
        ),
        Text(
          "DATA SCIENCE PROJECT",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        ),
        Container(
          margin: EdgeInsets.only(top: 20, bottom: 15),
          child: Row(
            children: [
              LinearPercentIndicator(
                padding: const EdgeInsets.only(top: 5, left: 63),
                width: 336,
                lineHeight: 30,
                percent: 0.70,
                center: Text(
                  "70.0%",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                linearStrokeCap: LinearStrokeCap.roundAll,
                progressColor: Colors.greenAccent,
                backgroundColor: Colors.indigo[300],
                animation: true,
                animationDuration: 5000,
              ),
            ],
          ),
        ),
        Text(
          "ENGLISH FOR COMPUTER II",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        ),
        Container(
          margin: EdgeInsets.only(top: 20, bottom: 15),
          child: Row(
            children: [
              LinearPercentIndicator(
                padding: const EdgeInsets.only(top: 5, left: 63),
                width: 336,
                lineHeight: 30,
                percent: 0.75,
                center: Text(
                  "75.0%",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                linearStrokeCap: LinearStrokeCap.roundAll,
                progressColor: Colors.lightBlue,
                backgroundColor: Colors.indigo[300],
                animation: true,
                animationDuration: 5000,
              ),
            ],
          ),
        ),
        Text(
          "OBJEJCT ORIENTED ANALYSIS",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        ),
      ],
    );
  }
}
