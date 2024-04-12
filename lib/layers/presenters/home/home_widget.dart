// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

abstract class HomeController extends ChangeNotifier {}

class HomeWidget extends StatelessWidget {

  final HomeController controller;

  const HomeWidget({
    super.key, required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Funiona!"),),body: Text("Funiona Mesmo!"),);
  }
}
