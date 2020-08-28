import 'dart:io';

import 'package:app/views/android/main.dart';
import 'package:flutter/material.dart';

void main() {
  if (Platform.isAndroid){
    debugPrint('App no android');
    runApp(MainAndroidView());
  }
  if (Platform.isIOS) {
    debugPrint('App no IOS');
  }
}