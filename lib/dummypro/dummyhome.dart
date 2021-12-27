// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cal/dummypro/dummymodel.dart';
import 'package:cal/dummypro/dummyoutput.dart';
import 'package:flutter/material.dart';


class DummyHome extends StatefulWidget {
  const DummyHome({Key? key}) : super(key: key);

  @override
  _DummyHomeState createState() => _DummyHomeState();
}

class _DummyHomeState extends State<DummyHome> {


  final form = GlobalKey<FormState>();
  static final _focusNode = FocusNode();
  bool update = false;

  DummyUser user = DummyUser("","");

  List<DummyUser> userList = [

  ];

  List<Widget> myList =[];

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
      rows: userList.map((user) => DataRow(
        cells: [
          DataCell(
            Text(userList.first.name),
          ),
          DataCell(
            Text(userList.first.email),
          ),
          DataCell(
            IconButton(
              onPressed: () {
                // _updateTextControllers(); // new function here
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
                _deleteTextControllers();
                // _deleteTextControllers(); // new function here
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
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: ()async{
          final result = await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DummyOutput(),
              ));
          setState(() {
            userList =result;
            print("homeDummy------------->${userList.length}");

          });
        },
      ),
    );
  }


  void _deleteTextControllers() {
    setState(() {
      //How to delete the list data on clicking Delete button?
      int currentIndex = userList.indexOf(user);
      userList.removeAt(currentIndex);
    });

  }

}