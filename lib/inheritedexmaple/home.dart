// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:cal/inheritedexmaple/data.dart';
import 'package:cal/inheritedexmaple/inherit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //InheritedWidget Example
    Color primaryColor = Theme.of(context).primaryColor;
    var data = InheritWidgetExample.of(context)!.dataAbstract;
    return Scaffold(
      backgroundColor: primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("${data.name()}"),
            const SizedBox(height: 10,),
            Text("${data.lastName()}"),
            const SizedBox(height: 10,),
            Text("${data.position()}"),
          ],
        ),
      ),
    );
  }
}
