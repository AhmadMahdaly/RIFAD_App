import 'package:flutter/material.dart';
import 'package:rifad/core/utils/constants/colors_constants.dart';

ThemeData appTheme(BuildContext context) {
  return ThemeData(
    appBarTheme: const AppBarTheme(
      color: kScaffoldBackgroundColor,
      iconTheme: IconThemeData(color: kMainColor),
    ),
    scaffoldBackgroundColor: kScaffoldBackgroundColor,
    textTheme: Theme.of(context).textTheme.apply(fontFamily: 'GE SS Two'),
  );
}
