import 'package:flutter/material.dart';
import 'package:uniespaco/core/firebase_configs/firebase_config.dart';
import 'package:uniespaco/core/inject/inject.dart';
import 'package:uniespaco/layers/ui/app.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() async {
  await FirebaseConfig.init();
  Inject.init();
  initializeDateFormatting().then((_) => runApp(const AppWidget()));
}
