import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DatePicker extends StatelessWidget {
  final String fieldName;
  final Function onDateTimeChanged;

  DatePicker({@required this.fieldName, @required this.onDateTimeChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      margin: EdgeInsets.all(20),
      child: Column(
        children: [
          Container(
              width: double.infinity,
              child: Text(
                this.fieldName,
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.left,
              )),
          SizedBox(
            height: 100,
            child: CupertinoDatePicker(
              mode: CupertinoDatePickerMode.date,
              initialDateTime: DateTime.now(),
              onDateTimeChanged: this.onDateTimeChanged,
            ),
          )
        ],
      ),
    );
  }
}
