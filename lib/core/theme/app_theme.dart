import 'package:flutter/material.dart';
import 'package:machine_test/core/theme/colors.dart';

ThemeData appTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: bgClr),
    useMaterial3: true,
    appBarTheme: const AppBarTheme(
      color: bgClr,
      scrolledUnderElevation: 0,
    ),
    scaffoldBackgroundColor: bgClr);
