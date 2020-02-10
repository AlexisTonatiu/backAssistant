import 'package:flutter/material.dart';
import 'login_Screen.dart';
//Tener esta ventana como observable cuando se vaya a correr para evitar bugs
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BackAssistant',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: LoginPage(),
    );
  }
}