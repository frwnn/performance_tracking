import 'package:flutter/material.dart';

class Backg extends StatelessWidget {
  final Widget child;
  const Backg({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(alignment: Alignment.center, children: <Widget>[
        Positioned(
            top: 135,
            child: Container(
                height: 700,
                width: 390,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20.0))))),
        child
      ]),
    );
  }
}
