import 'package:app/screens/dash/dashboard.dart';
import 'package:app/widgets/assets.dart';
import 'package:flutter/material.dart';

import 'login.dart';

class RegisterForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
