import 'package:consultas/constants/theme.dart';
import 'package:consultas/screen/auth_ui/Welcome/welcome.dart';
import 'package:flutter/material.dart';

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
        title: 'Importadora Cumpleaños',
        theme: themeData,
        home: const Welcome());
  }
}
