import 'package:cal/event.dart';
import 'package:cal/inheritedexmaple/data.dart';
import 'package:cal/inheritedexmaple/inherit.dart';
import 'package:cal/inheritedwidgetex2/homepage.dart';
import 'package:cal/inheritedwidgetex2/inheritedex.dart';
import 'package:flutter/material.dart';
import 'inheritedexmaple/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // return InheritWidgetExample(
    //   dataAbstract: Data(),
    //   child: MaterialApp(
    //     debugShowCheckedModeBanner: false,
    //     title: 'Flutter Demo',
    //     theme: ThemeData(
    //       primaryColor: Colors.tealAccent,
    //     ),
    //     home:     const HomeScreen(),
    //   ),
    // );
    return StateContainer(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primaryColor: Colors.tealAccent,
        ),
        home: HomePageInherited(),
      ),
    );
    // return MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   title: 'Flutter Demo',
    //   theme: ThemeData(
    //     primaryColor: Colors.tealAccent,
    //   ),
    //   home:   HomePageInherited(),
    // );
  }
}
