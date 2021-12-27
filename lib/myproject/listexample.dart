// import 'package:flutter/material.dart';
//
// import 'myhomepage.dart';
//
//
// class NameViewList extends StatefulWidget {
//   final List<String> names;
//   const NameViewList({Key? key, required this.names}) : super(key: key);
//
//   @override
//   _NameViewListState createState() => _NameViewListState();
// }
//
// class _NameViewListState extends State<NameViewList> {
//   TextEditingController nameController = TextEditingController();
//   List<String> names = <String>[];
//
//   createDialog(BuildContext context) {
//     return showDialog(
//         context: context,
//         builder: (context) {
//           return AlertDialog(
//             title: const Text('Insert Name'),
//             content: TextField(
//               controller: nameController,
//               decoration: const InputDecoration(
//                 border: OutlineInputBorder(),
//                 labelText: 'Contact Name',
//               ),
//             ),
//             actions: [
//               MaterialButton(
//                 child: const Text('Submit'),
//                 onPressed: () {
//                   addItemToList();
//                   Navigator.of(context).pop();
//                 },
//               )
//             ],
//           );
//         });
//   }
//
//   void addItemToList() {
//     setState(() {
//       names.insert(0, nameController.text);
//     });
//   }
//
//   @override
//   void initState() {
//     super.initState();
//     names = widget.names;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Settings'),
//         centerTitle: true,
//       ),
//       body: Column(
//         children: [
//           IconButton(
//             icon: const Icon(
//               Icons.queue,
//               color: Colors.green,
//             ),
//             onPressed: () {
//               createDialog(context);
//             },
//           ),
//           Padding(
//             padding: const EdgeInsets.all(20),
//             child: TextField(
//               controller: nameController,
//               decoration: const InputDecoration(
//                 border: OutlineInputBorder(),
//                 labelText: 'Contact Name',
//               ),
//             ),
//           ),
//           Row(
//             children: [
//               TextButton(
//                 child: const Text('Clear'),
//                 onPressed: () {
//                   setState(() {
//                     names.clear();
//                   });
//                 },
//               ),
//               // TextButton(
//               //   child: const Text('Submit'),
//               //   onPressed: () {
//               //     Navigator.of(context).push(MaterialPageRoute(
//               //         builder: (context) => MyHomePage(names: names)));
//               //   },
//               // ),
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables


import 'package:flutter/material.dart';


class Episode5 extends StatefulWidget {
  const Episode5({Key? key}) : super(key: key);

  @override
  _Episode5State createState() => _Episode5State();
}

class _Episode5State extends State<Episode5> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  final form = GlobalKey<FormState>();
  static final _focusNode = FocusNode();
  bool update = false;

  UserModel user = UserModel("","",);

  List<UserModel> userList = [

  ];

  @override
  Widget build(BuildContext context) {
    Widget bodyData() => DataTable(
      onSelectAll: (b) {},
      sortColumnIndex: 0,
      sortAscending: true,
      columns: <DataColumn>[
        DataColumn(label: Text("Name"), tooltip: "To Display name"),
        DataColumn(label: Text("Email"), tooltip: "To Display Email"),
        DataColumn(label: Text("Update"), tooltip: "Update data"),
        DataColumn(label: Text("Delete"), tooltip: "Delete data"),
      ],
      rows: userList
          .map(
            (user) => DataRow(
          cells: [
            DataCell(
              Text(user.name),
            ),
            DataCell(
              Text(user.email),
            ),
            DataCell(
              IconButton(
                onPressed: () {
                  this.user = user;
                  _updateTextControllers(); // new function here
                },
                icon: Icon(
                  Icons.edit,
                  color: Colors.black,
                ),
              ),
            ),
            DataCell(
              IconButton(
                onPressed: () {
                  this.user = user;
                  _deleteTextControllers(); // new function here
                },
                icon: Icon(
                  Icons.delete,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      )
          .toList(),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("Data add to List Table using Form"),
      ),
      body: Column(
        children: <Widget>[
          bodyData(),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Form(
              key: form,
              child: Column(
                children: <Widget>[
                  TextFormField(
                    controller: nameController,
                    focusNode: _focusNode,
                    keyboardType: TextInputType.text,
                    autocorrect: false,
                    maxLines: 1,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'This field is required';
                      }
                      return null;
                    },
                    decoration:  InputDecoration(
                      labelText: 'Name',
                      hintText: 'Name',
                      labelStyle:  TextStyle(
                          decorationStyle: TextDecorationStyle.solid),
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
                    decoration:  InputDecoration(
                        labelText: 'Email',
                        hintText: 'Email',
                        labelStyle:  TextStyle(
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
                            TextButton(
                              child: Text("Add"),
                              onPressed: () {
                                if (validate() == true) {
                                  form.currentState!.save();
                                  addUserToList(
                                    nameController.text,
                                    emailController.text,
                                  );
                                  clearForm();
                                }
                              },
                            ),
                            TextButton(
                              child: Text("Update"),
                              onPressed: () {
                                if (validate() == true) {
                                  form.currentState!.save();
                                  updateForm();
                                  clearForm();
                                }
                              },
                            ),
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
    );
  }

  void updateForm() {
    setState(() {
      //Code to update the list after editing
      user.name = nameController.text;
      user.email = emailController.text;
    });
  }

  void _updateTextControllers() {
    setState(() {
      nameController.text = user.name;
      emailController.text = user.email;
    });
  }

  void _deleteTextControllers() {
    setState(() {
      //How to delete the list data on clicking Delete button?
      int currentIndex = userList.indexOf(user);
      userList.removeAt(currentIndex);
    });
  }

  void addUserToList(name, email) {
    setState(() {
      userList.add(UserModel(name,email));
    });
  }

  clearForm() {
    nameController.clear();
    emailController.clear();
  }

  bool validate() {
    var valid = form.currentState!.validate();
    if (valid) form.currentState!.save();
    return valid;
  }
}
class UserModel {
  late final String name;
  late final String email;
  UserModel(this.name, this.email);
}
