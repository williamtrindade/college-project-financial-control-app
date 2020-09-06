import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Assets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Assets')
    );
  }

  static RaisedButton primaryButton(text) {
    return  RaisedButton(
      padding: EdgeInsets.all(10),
      elevation: 2.0,
      color: Color(0xff27FF30),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 25,
          color: Colors.black,
        ),
      ),
      onPressed: () {},
    );
  }
  static Container largeInput(label) {
    return Container(
      margin: EdgeInsets.all(10),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: label,
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}