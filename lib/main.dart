import 'package:flutter/widgets.dart';
import 'package:uniespaco/core/firebase_config.dart';
import 'package:uniespaco/layers/presenters/home/home.dart';
import 'package:uniespaco/layers/shared/dependecies/setup_dependencies.dart';

void main() {
  FirebaseConfig.init();
  setupDependencies();
  runApp(const HomePage());
}
