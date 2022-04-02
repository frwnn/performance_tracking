import 'package:flutter/material.dart';

class Pilihan extends StatelessWidget {
  final List<String> pilihan = ["Analisis Pembelajaran", "Lihat KHS"];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: ListView.separated(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            separatorBuilder: (context, index) {
              return Container(
                height: 10,
              );
            },
            itemCount: 2,
            itemBuilder: (context, index) {
              return Center(
                child: Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    Container(
                        height: 50,
                        width: 250,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.black,
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)))),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        pilihan[index],
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            color: Colors.black,
                            fontSize: 14),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 220),
                      child: Icon(
                        Icons.arrow_forward_ios,
                      ),
                    )
                  ],
                ),
              );
            },
          )),
    );
  }
}
