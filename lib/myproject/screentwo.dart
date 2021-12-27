// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// class ScreenTwo extends StatefulWidget {
//
//
//   const ScreenTwo(Key? key,) : super(key: key);
//
//   @override
//   _ScreenTwoState createState() => _ScreenTwoState();
// }
//
//
// class _ScreenTwoState extends State<ScreenTwo> {
//
//
//
//   final TextEditingController _textEditingController =  TextEditingController();
//   final TextEditingController _textEditingController2 =  TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         margin: EdgeInsets.all(20),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             TextFormField(
//               controller: _textEditingController,
//               style: TextStyle(
//                   color: Colors.black
//               ),
//               decoration: InputDecoration(
//                   labelText: "Name",
//                   labelStyle: TextStyle(
//                     color: Colors.black,
//                   )
//               ),
//             ),
//             TextFormField(
//               controller: _textEditingController2,
//               style: TextStyle(
//                   color: Colors.black
//               ),
//               decoration: InputDecoration(
//                   labelText: "country",
//                   labelStyle: TextStyle(
//                     color: Colors.black,
//                   )
//               ),
//             ),
//             SizedBox(height: 30,),
//             ElevatedButton(
//                 onPressed: (){
//
//                 },
//                 child: Text("goto"))
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class User {
//   String user;
//   String city;
//
//   User(this.user, this.city);
// }

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  _SecondScreenState createState() =>_SecondScreenState();
  }


class _SecondScreenState extends State<SecondScreen> {

  TextEditingController textFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Second screen')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: TextField(
              controller: textFieldController,
              style: TextStyle(
                fontSize: 15,
                color: Colors.black,
              ),
            ),
          ),

          ElevatedButton(
            child: Text(
              'Send text back',
              style: TextStyle(fontSize: 15),
            ),
            onPressed: () {
              _sendDataBack(context);
            },
          )

        ],
      ),
    );
  }

  // get the text in the TextField and send it back to the FirstScreen
  void _sendDataBack(BuildContext context) {
    String textToSendBack = textFieldController.text;
    Navigator.pop(context, textToSendBack);
  }
}