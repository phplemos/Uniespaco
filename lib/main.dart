import 'package:flutter/material.dart';
import 'package:uniespaco/core/firebase_configs/firebase_config.dart';
import 'package:uniespaco/core/inject/inject.dart';
import 'package:uniespaco/layers/ui/app.dart';

void main() async {
  await FirebaseConfig.init();
  Inject.init();
  runApp(const AppWidget());
}
