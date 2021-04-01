import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 25.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Units"),
                DropdownButton<String>(
                  value: "Imperial",
                  onChanged: (String value) {
                    //TODO UPDATE Units
                  },
                  items: <String>['Imperial', 'Metric']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.0,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Wax Lines"),
                Container(
                  child: Wrap(
                    spacing: 5.0,
                    runSpacing: 5.0,
                    children: [
                      FilterChip(
                        label: Text(
                          'Swix',
                          style: TextStyle(color: Theme.of(context).accentColor),
                        ),
                        selected: false,
                        onSelected: (bool value){
                          //TODO: Something here
                        },
                      ),
                      FilterChip(
                        label: Text(
                          'Toko',
                          style: TextStyle(color: Theme.of(context).accentColor),
                        ),
                        selected: true,
                        onSelected: (bool value){
                          //TODO: Something here
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
