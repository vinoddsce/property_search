import 'package:flutter/material.dart';

import './answer.dart';
import './questions.dart';

// void main() {
//   runApp(MainContainer());
// }

void main() => runApp(MainContainerStateWidget());

// void answeQuestion() {
//   print('What is your name ??? ');
// }

class MainContainerStateWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MainContainerState();
  }
}

class _MainContainerState extends State<MainContainerStateWidget> {
  var _questionIndex = 0;

  void answeQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  var questions = [
    'What\'s your favorite color ?? ',
    'What\'s your favorite animal ?? '
  ];

  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Hello !!!! 😄😄😄😄"),
      ),
      body: Column(
        children: <Widget>[
          // Text(questions.elementAt(_questionIndex)),
          Question(questions[_questionIndex]),
          RaisedButton(
            child: Text('Q 1 !!!!'),
            onPressed: answeQuestion,
          ),
          RaisedButton(
              child: Text('Q 2 !!!!'),
              onPressed: () {
                print('What\'s your gf name ?');
              }),
        ],
      ),
    ));
  }
}

// class MainContainerWidget extends StatelessWidget {
//   var questionIndex = 0;

//   void answeQuestion() {
//     questionIndex = questionIndex + 1;
//     print(questionIndex);
//   }

//   var questions = [
//     'What\'s your favorite color ?? ',
//     'What\'s your favorite animal ?? '
//   ];

//   Widget build(BuildContext context) {
//     return MaterialApp(
//         home: Scaffold(
//       appBar: AppBar(
//         title: Text("Hello !!!! 😄😄😄😄"),
//       ),
//       body: Column(
//         children: <Widget>[
//           Text(questions.elementAt(questionIndex)),
//           RaisedButton(
//             child: Text('Q 1 !!!!'),
//             onPressed: answeQuestion,
//           ),
//           RaisedButton(
//               child: Text('Q 2 !!!!'),
//               onPressed: () {
//                 print('What\'s your gf name ?');
//               }),
//         ],
//       ),
//     ));
//   }
// }
