import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Assets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(child: Text('Assets'));
  }

  static Container logoTitle({@required String text}) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Text(
        text,
        style: TextStyle(fontSize: 50),
      ),
    );
  }

  static Container largeTitle({@required String text}) {
    return Container(
      width: double.infinity,
      child: Text(
        text,
        style: TextStyle(fontSize: 70),
        textAlign: TextAlign.left,
      ),
    );
  }

  static Container secondaryTitle({@required String text}) {
    return Container(
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          text,
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }

  static RaisedButton primaryButton(
      {@required String text, @required Function onPressed}) {
    return RaisedButton(
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
        onPressed: onPressed);
  }

  static Container largeInput({@required String label}) {
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

  static FloatingActionButton roundedFloatButton(
      {@required IconData icon, @required Function onPressed}) {
    return FloatingActionButton(
      backgroundColor: Color(0xff27FF30),
      child: Icon(icon, color: Colors.black),
      onPressed: onPressed,
    );
  }
}
