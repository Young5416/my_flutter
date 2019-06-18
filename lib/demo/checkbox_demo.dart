import 'package:flutter/material.dart';

class CheckboxDemo extends StatefulWidget {
  @override
  _CheckboxDemoState createState() => _CheckboxDemoState();
}

class _CheckboxDemoState extends State<CheckboxDemo> {
  bool _checkBoxItemA = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CheckboxDemo'),
        elevation: 0.0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CheckboxListTile(
            value: _checkBoxItemA,
            onChanged: (value) {
              setState(() {
                _checkBoxItemA = value;
              });
            },
            title: Text('Checkbox Item A'),
            subtitle: Text('Description'),
            secondary: Icon(Icons.bookmark),
            selected: _checkBoxItemA,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
//              Checkbox(
//                value: _checkBoxItemA,
//                onChanged: (value){
//                  setState(() {
//                    _checkBoxItemA = value;
//                  });
//                },
//                activeColor: Colors.black,
//              )
            ],
          )
        ],
      ),
    );
  }
}
