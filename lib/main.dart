import 'package:flutter/material.dart';
import 'package:ui_whatsapp/whatsapp_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: false),
      home: const WhatsAppPage(),
    );
  }
}
