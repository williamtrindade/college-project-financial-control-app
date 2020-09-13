import 'package:flutter/material.dart';

class BoxCard extends StatelessWidget {
  final String text;
  final Function onTap;

  BoxCard({@required this.text, @required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10),
          width: 120,
          height: 120,
          child: Material(
            color: Color(0xff27FF30),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            elevation: 10.0,
            child: InkWell(
              onTap: this.onTap,
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      this.text,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
