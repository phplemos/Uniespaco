import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:uniespaco/layers/domain/entities/espaco_entity.dart';
import 'package:uniespaco/layers/domain/entities/horario_entity.dart';
import 'package:uniespaco/layers/ui/presenters/solicitar_servico/solicitar_servico_controller.dart';
import 'package:uniespaco/layers/ui/presenters/solicitar_servico/solicitar_servico_widget.dart';

class SolicitarServicoPage extends StatefulWidget {
  final List<HorarioEntity> horariosParaReservar;
  final EspacoEntity espacoEntity;
  final DateTime selectedDay;

  const SolicitarServicoPage({super.key, required this.espacoEntity, required this.horariosParaReservar, required this.selectedDay});

  @override
  State<SolicitarServicoPage> createState() => _SolicitarServicoPageState();
}

class _SolicitarServicoPageState extends State<SolicitarServicoPage> {
  @override
  Widget build(BuildContext context) {
    final controller = GetIt.I.get<SolicitarServicoController>();
    controller.espaco = widget.espacoEntity;
    controller.periodo = widget.horariosParaReservar;
    controller.selectedDay = widget.selectedDay;
    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        return SolicitarServicoWidget(controller: controller, espacoEntity: widget.espacoEntity);
      },
    );
  }
}
