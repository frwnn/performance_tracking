import 'package:flutter/material.dart';
import 'package:performance_tracking/performance/component/identitas.dart';
import 'package:performance_tracking/performance/component/pilihan.dart';
import 'package:performance_tracking/performance/component/status.dart';
import 'backg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Backg(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          identitas(),
          SizedBox(
            height: 20,
          ),
          Status(),
          SizedBox(
            height: 20,
          ),
          Pilihan()
        ],
      ),
    );
  }
}
