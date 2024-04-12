import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/widgets.dart';
import 'package:uniespaco/core/firebase_options.dart';

class FirebaseConfig {
  static init() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(
      name: 'Dev',
      options: DefaultFirebaseOptions.currentPlatform,
    );
  }
}
