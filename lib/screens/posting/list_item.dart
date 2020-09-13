import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  final String qtt;
  final String date;
  final String category;
  final Function onDelete;

  ListItem(
      {@required this.qtt,
      @required this.date,
      @required this.category,
      @required this.onDelete});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        onTap: () => {},
        leading: Text(
          this.qtt,
          style: TextStyle(fontSize: 20),
        ),
        title: Text(this.date, textAlign: TextAlign.right),
        subtitle: Text(this.category, textAlign: TextAlign.right),
        trailing: Container(
          width: 60,
          height: 60,
          child: InkWell(
            onTap: this.onDelete,
            child: Icon(
              Icons.delete,
              color: Colors.black,
            ),
          ),
        ));
  }
}
