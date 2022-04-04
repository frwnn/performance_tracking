import 'package:flutter/material.dart';

class PilihDetail extends StatelessWidget {
  final List<String> pilihdetail = ["Quis", "Assignment", "UTS", "UAS"];
  final List<String> nilaidetail = ["5/25", "10/25", "0/1", "0/1"];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                  height: 250,
                  width: 300,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(20.0)))),
              ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                separatorBuilder: (context, index) {
                  return Container(
                    height: 10,
                  );
                },
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Center(
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                            height: 50,
                            width: 280,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                  color: Colors.grey,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)))),
                        Padding(
                          padding: const EdgeInsets.only(left: 70, right: 70),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                pilihdetail[index],
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    color: Colors.black,
                                    fontSize: 14),
                              ),
                              Stack(
                                alignment: Alignment.center,
                                children: [
                                  Container(
                                      height: 20,
                                      width: 40,
                                      decoration: BoxDecoration(
                                          color: Colors.blue,
                                          border: Border.all(
                                            color: Colors.white,
                                          ),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10.0)))),
                                  Text(nilaidetail[index],
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.normal,
                                          color: Colors.white,
                                          fontSize: 12))
                                ],
                              )
                            ],
                          ),
                        ),
                        // Padding(
                        //   padding: const EdgeInsets.only(left: 220),
                        //   child: Icon(
                        //     Icons.arrow_forward_ios,
                        //   ),
                        // )
                      ],
                    ),
                  );
                },
              ),
            ],
          )),
    );
  }
}
