import 'package:flutter/material.dart';

class identitas extends StatelessWidget {
  const identitas({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Center(
          child: Stack(alignment: Alignment.topCenter, children: [
            Container(
              width: 300,
              height: 120,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.black,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 18),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Mahasiswa : Fajar Irawan - 41818010127",
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 14)),
                    Text("Fak/Prodi : Sistem Informasi - S1",
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 14)),
                    Text("Smst/SKS/Status : 7/130/Aktif",
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 14)),
                  ],
                ),
              ),
            ),
          ]),
        ),
      ],
    );
  }
}
