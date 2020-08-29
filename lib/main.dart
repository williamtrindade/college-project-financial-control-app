import 'dart:io';

import 'package:app/screens/main.dart';
import 'package:flutter/material.dart';

void main() {
  if (Platform.isAndroid) {
    runApp(MainScreen());
  }
  if (Platform.isIOS) {
    runApp(MainScreen());
  }
}