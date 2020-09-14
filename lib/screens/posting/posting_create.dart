import 'dart:ui';

import 'package:app/widgets/DatePicker.dart';
import 'package:app/widgets/assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PostingCreateScreen extends StatefulWidget {
  @override
  _PostingCreateScreenState createState() => _PostingCreateScreenState();
}

class _PostingCreateScreenState extends State<PostingCreateScreen> {
  String _dateString;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Color(0xff27FF30),
          title: Text(
            'Adicionar lançamento',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Column(
          children: [
            DatePicker(
              fieldName: '',
              onDateTimeChanged: (DateTime value) {
                setState(() {
                  this._dateString =
                      "${value.month}/${value.day}/${value.year}";
                  debugPrint(this._dateString);
                });
              },
            ),
            Assets.largeInput(label: 'Valor'),
            Container(
                padding: EdgeInsets.all(8),
                width: double.infinity,
                child:
                    Assets.primaryButton(text: 'Adicionar', onPressed: () {}))
          ],
        ));
  }
}
