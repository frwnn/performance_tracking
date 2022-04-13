import 'package:flutter/material.dart';
import 'package:performance_tracking/performance/model/QuizModel.dart';

class QuizCheckPage extends StatefulWidget {
  @override
  _QuizCheckPageState createState() => _QuizCheckPageState();
}

class _QuizCheckPageState extends State<QuizCheckPage> {
  List<QuizModel> contacts = [
    QuizModel("Quiz 1", false),
    QuizModel("Quiz 2", false),
    QuizModel("Quiz 3", false),
    QuizModel("Quiz 4", false),
    QuizModel("Quiz 5", false),
    QuizModel("Quiz 6", false),
    QuizModel("Quiz 7", false),
  ];

  List<QuizModel> selectedContacts = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List Laporan"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                    itemCount: contacts.length,
                    itemBuilder: (BuildContext context, int index) {
                      // return item
                      return ContactItem(
                        contacts[index].quiz,
                        contacts[index].isSelected,
                        index,
                      );
                    }),
              ),
              // selectedContacts.length > 0
              //     ? Padding(
              //         padding: const EdgeInsets.symmetric(
              //           horizontal: 25,
              //           vertical: 10,
              //         ),
              //         child: SizedBox(
              //           width: double.infinity,
              //           child: RaisedButton(
              //             color: Colors.green[700],
              //             child: Text(
              //               "Delete (${selectedContacts.length})",
              //               style: TextStyle(
              //                 color: Colors.white,
              //                 fontSize: 18,
              //               ),
              //             ),
              //             onPressed: () {
              //               print(
              //                   "Delete List Lenght: ${selectedContacts.length}");
              //             },
              //           ),
              //         ),
              //       )
              // : Container(),
            ],
          ),
        ),
      ),
    );
  }

  Widget ContactItem(String quiz, bool isSelected, int index) {
    return Container(
      margin: EdgeInsets.only(top: 35, left: 20, right: 20),
      child: ListTile(
        title: Text(
          quiz,
          style: TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
        trailing: isSelected
            ? Icon(
                Icons.check_circle_outline,
                color: Colors.green[700],
              )
            : Icon(
                Icons.circle_outlined,
                color: Colors.red,
              ),
        onTap: () {
          setState(() {
            contacts[index].isSelected = !contacts[index].isSelected;
            if (contacts[index].isSelected == true) {
              selectedContacts.add(QuizModel(quiz, true));
            } else if (contacts[index].isSelected == false) {
              selectedContacts.removeWhere(
                  (element) => element.quiz == contacts[index].quiz);
            }
          });
        },
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
}
