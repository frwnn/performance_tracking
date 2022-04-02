import 'package:flutter/material.dart';

class UnduhLaporan extends StatefulWidget {
  const UnduhLaporan({Key? key}) : super(key: key);

  @override
  State<UnduhLaporan> createState() => UnduhLaporanState();
}

class UnduhLaporanState extends State<UnduhLaporan> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 50, left: 120),
            width: 200,
            height: 50,
            child: RaisedButton(
              onPressed: () {
                print("object");
              },
              color: Colors.green,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              child: Text(
                "Unduh Laporan",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    );
  }
}
