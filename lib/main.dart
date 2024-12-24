import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:guidelines/guidelines.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then((fn) {
    runApp(const Guidelines());
  });
}
