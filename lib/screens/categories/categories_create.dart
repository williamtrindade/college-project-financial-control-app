import 'package:app/widgets/assets.dart';
import 'package:flutter/material.dart';

class CategoriesCreateScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Color(0xff27FF30),
          title: Text(
            'Adicionar categoria',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Assets.largeInput(label: 'Nome', keyboardType: TextInputType.text,),
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
