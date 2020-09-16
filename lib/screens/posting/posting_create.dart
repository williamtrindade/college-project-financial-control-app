import 'dart:ui';

import 'package:app/widgets/date_picker.dart';
import 'package:app/widgets/assets.dart';
import 'package:app/widgets/dropdown_select.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PostingCreateScreen extends StatefulWidget {
  @override
  _PostingCreateScreenState createState() => _PostingCreateScreenState();
}

class _PostingCreateScreenState extends State<PostingCreateScreen> {
  String _dateString;
  String _category;

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
        body: SingleChildScrollView(
          child: Column(
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
              DropdownSelect(
                  fieldName: 'Categoria',
                  itemsList: <String>['Mercado', 'Finanças'],
                  value: this._category,
                  onChange: (newValue) {
                    setState(() {
                      this._category = newValue;
                      debugPrint(this._category);
                    });
                  }
              ),
              Assets.largeInput(label: 'Valor', keyboardType: TextInputType.number),
              Container(
                  padding: EdgeInsets.all(8),
                  width: double.infinity,
                  child:
                      Assets.primaryButton(text: 'Adicionar', onPressed: () {
                        Navigator.of(context).pop();
                      }))
            ],
          ),
        ));
  }
}
