import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  final String name;
  final Function onDelete;

  ListItem({@required this.name, @required this.onDelete});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        onTap: () => {},
        title: Text(this.name, textAlign: TextAlign.left),
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
