import 'package:flutter/material.dart';
import 'package:performance_tracking/performance/screen/detailpage.dart';
import 'package:performance_tracking/performance/screen/performancepage.dart';
import 'package:intl/intl.dart';

class Coba extends StatelessWidget {
  final List<String> gasal = ["1", "3", "5", "7"];
  final List<Widget> landing = [
    PerformancePage(),
    DetailPage(),
    PerformancePage(),
    DetailPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => landing[0]));
        },
        child: ListView.separated(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          separatorBuilder: (context, index) {
            return Container(
              height: 10,
            );
          },
          itemCount: 4,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Stack(alignment: Alignment.topLeft, children: [
                Container(
                  width: 160,
                  height: 120,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                              height: 50,
                              width: 135,
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  border: Border.all(
                                    color: Colors.grey,
                                  ),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)))),
                          Column(
                            children: [
                              Text("KHS Gasal 2021",
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 14)),
                              Text("Semester ${gasal[index]}",
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 14)),
                            ],
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Text("IP : 3.2",
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 14)),
                          Text("24 SKS",
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 14)),
                          Text("IPK : 3.7",
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 14)),
                        ],
                      )
                    ],
                  ),
                ),
              ]),
            );
          },
        ),
      ),
    );
  }
}
