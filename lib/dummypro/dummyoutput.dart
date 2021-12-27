// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'dummymodel.dart';

class DummyOutput extends StatefulWidget {
  const DummyOutput({Key? key}) : super(key: key);

  @override
  _DummyOutputState createState() => _DummyOutputState();
}

class _DummyOutputState extends State<DummyOutput> {

  List<DummyUser> userList = [];
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  final form = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Data add to List Table using Form"),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Form(
              key: form,
              child: Column(
                children: <Widget>[
                  TextFormField(
                    controller: nameController,
                    keyboardType: TextInputType.text,
                    autocorrect: false,
                    maxLines: 1,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'This field is required';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      labelText: 'Name',
                      hintText: 'Name',
                      labelStyle:
                          TextStyle(decorationStyle: TextDecorationStyle.solid),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: emailController,
                    keyboardType: TextInputType.text,
                    autocorrect: false,
                    maxLines: 1,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'This field is required';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        labelText: 'Email',
                        hintText: 'Email',
                        labelStyle: TextStyle(
                            decorationStyle: TextDecorationStyle.solid)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Center(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            // TextButton(
                            //   child: Text("Add"),
                            //   onPressed: () {
                            //     if (validate() == true) {
                            //       form.currentState!.save();
                            //
                            //       clearForm();
                            //     }
                            //   },
                            // ),
                            // TextButton(
                            //   child: Text("Update"),
                            //   onPressed: () {
                            //     if (validate() == true) {
                            //       form.currentState!.save();
                            //       updateForm();
                            //       clearForm();
                            //     }
                            //   },
                            // ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          addUserToList(nameController.text,emailController.text);
          Navigator.of(context).pop(userList);
          print("outPutScreen${userList.length}");
        },
      ),
    );
  }

  void addUserToList(name, email) {
    setState(() {
      userList.add(DummyUser(name, email));
    });
  }
  // void updateForm() {
  //   setState(() {
  //     //Code to update the list after editing
  //     user.name = nameController.text;
  //     user.email = emailController.text;
  //   });
  // }
  //
  // void _updateTextControllers() {
  //   setState(() {
  //     nameController.text = user.name;
  //     emailController.text = user.email;
  //   });
  // }
  //
  // void _deleteTextControllers() {
  //   setState(() {
  //     //How to delete the list data on clicking Delete button?
  //     int currentIndex = userList.indexOf(user);
  //     userList.removeAt(currentIndex);
  //   });
  // }
  //
  // void addUserToList(name, email) {
  //   setState(() {
  //     userList.add(DummyUser(name, email));
  //   });
  // }
  //
  // clearForm() {
  //   nameController.clear();
  //   emailController.clear();
  // }
  //
  // bool validate() {
  //   var valid = form.currentState!.validate();
  //   if (valid) form.currentState!.save();
  //   return valid;
  // }
}
