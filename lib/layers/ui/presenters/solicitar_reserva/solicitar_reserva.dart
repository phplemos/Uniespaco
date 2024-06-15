import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:uniespaco/layers/domain/entities/espaco_entity.dart';
import 'package:uniespaco/layers/domain/entities/horario_entity.dart';
import 'package:uniespaco/layers/ui/presenters/solicitar_reserva/solicitar_reserva_controller.dart';
import 'package:uniespaco/layers/ui/presenters/solicitar_reserva/solicitar_reserva_widget.dart';

class SolicitarReservaPage extends StatefulWidget {
  final List<HorarioEntity> horariosParaReservar;
  final EspacoEntity espacoEntity;
  final DateTime selectedDay;

  const SolicitarReservaPage({super.key, required this.horariosParaReservar, required this.espacoEntity, required this.selectedDay});

  @override
  State<SolicitarReservaPage> createState() => _SolicitarReservaPageState();
}

class _SolicitarReservaPageState extends State<SolicitarReservaPage> {
  @override
  Widget build(BuildContext context) {
    final controller = GetIt.I.get<SolicitarReservaController>();
    controller.periodo = widget.horariosParaReservar;
    controller.espaco = widget.espacoEntity;
    controller.selectedDay = widget.selectedDay;
    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        return SolicitarReservaWidget(controller: controller, espacoEntity: widget.espacoEntity);
      },
    );
  }
}
