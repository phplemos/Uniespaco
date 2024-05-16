import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:uniespaco/core/firebase_configs/firebase_options.dart';

class FirebaseConfig {
  static Future<void> init() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );

  }
}
