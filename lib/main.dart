import 'package:flutter/material.dart';
import 'package:machine_test/app/user/profilepage/profilePage.dart';
import 'package:machine_test/app/user/profilepage/widgets/profilheader.dart';
import 'package:machine_test/core/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: appTheme,
      home: ProfileBaseScreen(),
    );
  }
}
