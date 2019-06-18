import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'dart:async';

class DateTimeDemo extends StatefulWidget {
  @override
  _DateTimeDemoState createState() => _DateTimeDemoState();
}

class _DateTimeDemoState extends State<DateTimeDemo> {
  DateTime selectedDate = DateTime.now();
  TimeOfDay selectedTime = TimeOfDay(hour: 9, minute: 30);

  _selectDate() async {
    final DateTime date = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );

    if (date == null) return;

    setState(() {
      selectedDate = date;
    });
  }

  _selectTime() async {
    final TimeOfDay time = await showTimePicker(
      context: context,
      initialTime: selectedTime,
    );

    if (time == null) return;

    setState(() {
      selectedTime = time;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DateTime'),
        elevation: 0.0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              InkWell(
                onTap: _selectDate,
                child: Row(
                  children: <Widget>[
                    Icon(Icons.arrow_drop_down),
                    Text(DateFormat.yMMMd().format(selectedDate))
                  ],
                ),
              ),
              InkWell(
                onTap: _selectTime,
                child: Row(
                  children: <Widget>[
                    Icon(Icons.arrow_drop_down),
                    Text(selectedTime.format(context))
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
