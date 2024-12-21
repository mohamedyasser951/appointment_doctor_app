import 'package:appointment_app/core/di/dependency_injection.dart';
import 'package:appointment_app/doc_app.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupGetIt();
  runApp(const DocApp());
}
