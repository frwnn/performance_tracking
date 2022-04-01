import 'package:flutter/material.dart';

class Semester extends StatelessWidget {
  const Semester({
    Key? key,
  }) : super(key: key);

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
            itemCount: 8,
            itemBuilder: (context, index) {
              return Center(
                child: Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    Container(
                        height: 50,
                        width: 200,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.black,
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)))),
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Text(
                        "Semester ${index + 1}",
                        style: TextStyle(fontFamily: ''),
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
