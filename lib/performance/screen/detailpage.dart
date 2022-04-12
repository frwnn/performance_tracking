import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:performance_tracking/performance/component/identitas.dart';
import 'package:performance_tracking/performance/component/pilihdetail.dart';

import 'package:performance_tracking/performance/component/body.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.blue,
          title: Text(
            "Analisa Pembelajaran",
            style: TextStyle(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 20),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            new CircularPercentIndicator(
              radius: 160.0,
              lineWidth: 13.0,
              animation: true,
              percent: 0.3,
              center: new Text(
                "30.0%",
                style:
                    new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              ),
              circularStrokeCap: CircularStrokeCap.round,
              progressColor: Colors.blue,
            ),
            SizedBox(
              height: 20,
            ),
            identitas(),
            PilihDetail()
          ],
        )
        //
        );
  }
}
