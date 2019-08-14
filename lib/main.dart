import 'package:flutter/material.dart';

//import pages
import 'package:fitness_tracker_app/pages/HomePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Traine app !',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Color.fromRGBO(64,75,89, 1),
        backgroundColor: Color.fromRGBO(243,243,243, 1),
        highlightColor: Color.fromRGBO(114,181,154, 1)
      ),
      home: HomePage(),
    );
  }
}