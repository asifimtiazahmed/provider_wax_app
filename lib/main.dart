import 'package:flutter/material.dart';
import 'package:wax_app/screen/home.dart';

import 'package:provider/provider.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: ,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Wax App',
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          accentColor: Colors.deepOrangeAccent,
        ),
        home: Home(),
      ),
    );
  }
}

