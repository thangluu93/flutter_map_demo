import 'package:flutter/material.dart';
import 'package:map_zenly/Pages/map_page.dart';
import 'package:map_zenly/Pages/root_page.dart';
import 'package:map_zenly/models/auth.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final Auth _auth = Auth();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Map',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: RootPage(auth: _auth,), //main
      home: MapPage(), //test ui
    );
  }
}
