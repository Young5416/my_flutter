import 'package:flutter/material.dart';
import 'dart:async';

class SnackBarDemo extends StatefulWidget {
  @override
  _SnackBarDemoState createState() => _SnackBarDemoState();
}

class _SnackBarDemoState extends State<SnackBarDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BottomSheetDemo'),
        elevation: 0.0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[SnackBarButton()],
          )
        ],
      ),
    );
  }
}

class SnackBarButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Text('Open SbackBar'),
      onPressed: () {
        Scaffold.of(context).showSnackBar(SnackBar(
          content: Text('Processing'),
          action: SnackBarAction(label: 'OK', onPressed: () {}),
        ));
      },
    );
  }
}
