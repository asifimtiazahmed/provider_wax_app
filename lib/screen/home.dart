import 'package:flutter/material.dart';
import 'package:wax_app/screen/setting.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Wax App"), actions: [
        IconButton(
          icon: Icon(Icons.settings),
          onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Settings()));
          },
        ),
      ],),
    );
  }
}
