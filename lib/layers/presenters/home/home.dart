import 'package:flutter/material.dart';
import 'package:uniespaco/layers/presenters/home/home_controller.dart';
import 'package:uniespaco/layers/presenters/home/home_widget.dart';
import 'package:uniespaco/layers/shared/dependecies/dependecies.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final HomeControllerImpl controller;

  @override
  void initState() {
    controller = HomeControllerImpl(
        listarTodosEspacosUseCase: Dependencies.instance.get());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeWidget(
        controller: controller,
      ),
    );
  }
}
