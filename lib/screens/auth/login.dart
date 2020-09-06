import 'package:app/widgets/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 100, horizontal: 20),
          child: Form(
            key: _formKey,
            child: this.loginForm(),
          ),
        ),
      ),
    );
  }

  Widget loginForm() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(20),
          child: Text(
            'Piggy',
            style: TextStyle(fontSize: 50),
          ),
        ),
        // Add TextFormFields and RaisedButton here.
        Container(
          padding: EdgeInsets.all(12),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Faça se login',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
        Assets.largeInput('Email'),
        Assets.largeInput('Senha'),
        Container(
          padding: EdgeInsets.all(8),
          width: double.infinity,
          child: Assets.primaryButton('Entrar'),
        ),
      ]
    );
  }
}
