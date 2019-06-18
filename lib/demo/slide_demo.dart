import 'package:flutter/material.dart';

class SlideDemo extends StatefulWidget {
  @override
  _SlideDemoState createState() => _SlideDemoState();
}

class _SlideDemoState extends State<SlideDemo> {
  double _slideItemA = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SlideDemo'),
        elevation: 0.0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Slider(
                value: _slideItemA,
                onChanged: (value) {
                  setState(() {
                    _slideItemA = value;
                  });
                },
                activeColor: Theme.of(context).accentColor,
                inactiveColor: Theme.of(context).accentColor.withOpacity(0.3),
                min: 0.0,
                max: 10.0,
                divisions: 10,
                label: '${_slideItemA.toInt()}',
              )
            ],
          ),
          SizedBox(
            height: 16.0,
          ),
          Text('SlideValue: $_slideItemA')
        ],
      ),
    );
  }
}
