import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:uniespaco/layers/domain/entities/espaco_entity.dart';
import 'package:uniespaco/layers/ui/presenters/solicitar_servico/solicitar_servico_controller.dart';
import 'package:uniespaco/layers/ui/presenters/solicitar_servico/solicitar_servico_widget.dart';

class SolicitarServicoPage extends StatefulWidget {
  final EspacoEntity espacoEntity;

  const SolicitarServicoPage({super.key, required this.espacoEntity});

  @override
  State<SolicitarServicoPage> createState() => _SolicitarServicoPageState();
}

class _SolicitarServicoPageState extends State<SolicitarServicoPage> {
  @override
  Widget build(BuildContext context) {
    final controller = GetIt.I.get<SolicitarServicoController>();
    controller.espaco = widget.espacoEntity;
    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        return SolicitarServicoWidget(controller: controller, espacoEntity: widget.espacoEntity);
      },
    );
  }
}
