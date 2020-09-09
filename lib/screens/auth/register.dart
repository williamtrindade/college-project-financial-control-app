import 'package:app/screens/auth/login.dart';
import 'package:app/screens/dash/dashboard.dart';
import 'package:app/widgets/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RegisterScreen extends StatelessWidget {
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
            child: this.loginForm(context),
          ),
        ),
      ),
    );
  }

  Widget loginForm(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Assets.logoTitle(text: 'Piggy'),
          // Add TextFormFields and RaisedButton here.
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Assets.secondaryTitle(text: 'Cadastre-se'),
          ),
          Assets.largeInput(label: 'Nome'),
          Assets.largeInput(label: 'Email'),
          Assets.largeInput(label: 'Senha'),
          Container(
            padding: EdgeInsets.all(8),
            width: double.infinity,
            child: Assets.primaryButton(
                text: 'Cadastrar',
                onPressed: () => {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => DashboardScreen()))
                    }),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => LoginScreen()));
            },
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Assets.secondaryTitle(text: 'Já tenho conta.'),
            ),
          ),
        ]);
  }
}
