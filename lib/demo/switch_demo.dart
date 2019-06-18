import 'package:flutter/material.dart';

class SwitchDDemo extends StatefulWidget {
  @override
  _SwitchDDemoState createState() => _SwitchDDemoState();
}

class _SwitchDDemoState extends State<SwitchDDemo> {
  bool _switchItemA = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SwitchDDemo'),
        elevation: 0.0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SwitchListTile(
            value: _switchItemA,
            onChanged: (value) {
              setState(() {
                _switchItemA = value;
              });
            },
            title: Text('Switch Item A'),
            subtitle: Text('Description'),
            secondary:
                Icon(_switchItemA ? Icons.visibility : Icons.visibility_off),
            selected: _switchItemA,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
//              Text(
//                _switchItemA ? '😊' : '🙃',
//                style: TextStyle(fontSize: 32.0),
//              ),
//              Switch(
//                  value: _switchItemA,
//                  onChanged: (value) {
//                    setState(() {
//                      _switchItemA = value;
//                    });
//                  })
            ],
          )
        ],
      ),
    );
  }
}
