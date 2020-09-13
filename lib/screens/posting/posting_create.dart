import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PostingCreateScreen extends StatelessWidget {
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
        children: [],
      ),
    );
  }
}
