import 'package:flutter/material.dart';
import 'theme.dart';
import 'features/bootstrap/bootstrap_screen.dart';

class VerdictApp extends StatelessWidget {
  const VerdictApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Verdict',
      theme: buildTheme(),
      home: const BootstrapScreen(),
    );
  }
}