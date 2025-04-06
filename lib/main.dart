import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rifad/my_app.dart';

void main() async {
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((_) {
    runApp(const MyApp());
  });
}
