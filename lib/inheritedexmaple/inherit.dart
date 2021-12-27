import 'package:cal/inheritedexmaple/data.dart';
import 'package:flutter/material.dart';


class InheritWidgetExample extends InheritedWidget{
  final DataAbstract dataAbstract;
  final  Widget child;
  const InheritWidgetExample({Key? key,required this.child,required this.dataAbstract})
      : super(key: key, child: child);


   @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return  true;
  }
  static InheritWidgetExample? of(BuildContext context){
    InheritWidgetExample? inherit = context.dependOnInheritedWidgetOfExactType();
    return inherit;
  }
}