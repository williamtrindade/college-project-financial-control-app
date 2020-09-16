import 'package:flutter/material.dart';

class DropdownSelect extends StatelessWidget {
  final String fieldName;
  final List<String> itemsList;
  final String value;
  final Function onChange;

  DropdownSelect(
      {@required this.onChange,
      @required this.fieldName,
      @required this.itemsList,
      @required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10),
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
            width: double.infinity,
            child: DropdownButton<String>(
              value: this.value,
              iconSize: 24,
              elevation: 16,
              style: TextStyle(color: Colors.deepPurple),
              underline: Container(
                height: 2,
                color: Colors.black,
              ),
              onChanged: this.onChange,
              items: this.itemsList.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
