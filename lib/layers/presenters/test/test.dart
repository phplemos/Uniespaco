import 'package:flutter/material.dart';
import 'package:uniespaco/layers/presenters/test/test_controller.dart';
import 'package:uniespaco/layers/presenters/test/test_widget.dart';
import 'package:uniespaco/layers/shared/dependecies/dependecies.dart';

class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  late final TestController controller;
  @override
  void initState() {
    controller = TestControllerImp(listarSetoresCadastradosUseCase: Dependencies.instance.get());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder:(context, child) => TesteWidget(controller: controller),
    );
  }
}
