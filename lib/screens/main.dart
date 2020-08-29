import 'package:flutter/material.dart';

import 'auth/login.dart';

class MainScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreen(),
    );
  }

}