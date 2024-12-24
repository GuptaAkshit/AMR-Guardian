import 'package:flutter/material.dart';
import 'package:guidelines/splash_screen.dart';

class Guidelines extends StatefulWidget {
  const Guidelines({super.key});

  @override
  State<Guidelines> createState() {
    return _Guidelines();
  }
}

class _Guidelines extends State<Guidelines> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData().copyWith(useMaterial3: false),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}
