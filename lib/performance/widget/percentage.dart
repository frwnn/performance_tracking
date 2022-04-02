import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

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
                percent: 0.75,
                center: Text(
                  "75.0%",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                linearStrokeCap: LinearStrokeCap.roundAll,
                progressColor: Colors.yellow,
                backgroundColor: Colors.indigo,
                animation: true,
                animationDuration: 5000,
              ),
            ],
          ),
        )
      ],
    );
  }
}
