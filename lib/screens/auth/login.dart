import 'package:flutter/material.dart';

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
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(20),
                    child: Text(
                      '.Ponto',
                      style: TextStyle(fontSize: 50),
                    ),
                  ),
                  // Add TextFormFields and RaisedButton here.
                  Container(
                    margin: EdgeInsets.all(10),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'E-mail',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Senha',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    width: double.infinity,
                    child: RaisedButton(
                      padding: EdgeInsets.all(10),
                      elevation: 2.0,
                      color: Color(0xff34FFC2),
                      child: Text(
                        'Entrar',
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                        ),
                      ),
                      onPressed: () {

                      },
                    ),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
