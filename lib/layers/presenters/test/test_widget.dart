import 'package:flutter/material.dart';

abstract class TestController extends ChangeNotifier {
  String get title;
  List<String> get itens;
  String? get errorMsg;
}

class TesteWidget extends StatelessWidget {
  final TestController controller;
  const TesteWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(controller.title),
      ),
      body: controller.errorMsg != null
          ? Text(controller.errorMsg!)
          : ListView.builder(
              itemCount: controller.itens.length,
              itemBuilder: (context, index) => ListTile(
                title: Text(controller.itens[index]),
              ),
            ),
    );
  }
}
