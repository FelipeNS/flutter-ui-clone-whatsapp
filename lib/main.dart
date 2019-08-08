import 'package:flutter/material.dart';
import 'package:whatsapp_layout/pages/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp clone',
      theme: ThemeData(
        primaryColor: Color(0xFF075E54),
        accentColor: Color(0xFF25D366),
      ),
      home: Home(),
    );
  }
}
