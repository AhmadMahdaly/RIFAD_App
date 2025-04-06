import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rifad/my_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Set the preferred orientations to portrait only
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((_) {
    runApp(const MyApp());
  });
}
