import 'package:flutter/material.dart';
import 'package:performance_tracking/model/quiz_model.dart';

class quizChecker extends StatefulWidget {
  const quizChecker({Key? key}) : super(key: key);

  @override
  State<quizChecker> createState() => _quizCheckerState();
}

class _quizCheckerState extends State<quizChecker> {
  List<QuizModel> data = [
    QuizModel("Quiz 1", false),
    QuizModel("Quiz 2", false),
    QuizModel("Quiz 3", false),
    QuizModel("Quiz 4", false),
    QuizModel("Quiz 5", false),
    QuizModel("Quiz 6", false),
    QuizModel("Quiz 7", false),
  ];

  List<QuizModel> selectedData = List.empty();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blue,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Laporan Kinerja",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
          child: Container(
              child: ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (BuildContext context, int index) {
                    return DataItem(
                        data[index].quiz, data[index].isSelected, index);
                  }))),
    );
  }
}

Widget DataItem(String quiz, bool isSelected, int index) {
  return Container(
    margin: EdgeInsets.only(top: 35, left: 20, right: 20),
    child: ListTile(
      title: Text(
        quiz,
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      trailing: isSelected
          ? Icon(
              Icons.check_circle,
              color: Colors.green[700],
            )
          : Icon(
              Icons.circle_outlined,
              color: Colors.red,
            ),
    ),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
            bottomLeft: Radius.circular(20.0),
            bottomRight: Radius.circular(20.0)),
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.topCenter,
            colors: [Colors.white, Colors.white]),
        boxShadow: [
          BoxShadow(
              color: Colors.grey, blurRadius: 10.0, offset: Offset(0.0, 10.0))
        ]),
  );
}
