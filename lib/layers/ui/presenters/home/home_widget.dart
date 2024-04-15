// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:uniespaco/layers/domain/entities/espaco_entity.dart';
import 'package:uniespaco/layers/domain/entities/usuario_entity.dart';
import 'package:uniespaco/layers/ui/widgets/listar_espacos_widget.dart';

abstract class HomeController extends ChangeNotifier {
  Future<UsuarioEntity> getUsuario();
  Future<void> logout();
  Future<List<EspacoEntity>> getEspacos();
}

class HomeWidget extends StatelessWidget {
  final HomeController controller;

  const HomeWidget({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListarEspacosWidget(
          controller: controller,
        ),
      ],
    );
  }
}
