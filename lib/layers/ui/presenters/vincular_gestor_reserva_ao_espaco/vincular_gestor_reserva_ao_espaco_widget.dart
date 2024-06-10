// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:uniespaco/layers/ui/presenters/vincular_gestor_reserva_ao_espaco/form/form_vinculo_gestor_reserva_espaco_widget.dart';
import 'package:uniespaco/layers/ui/presenters/vincular_gestor_reserva_ao_espaco/vincular_gestor_reserva_ao_espaco_controller.dart';



class VincularGestorReservaAoEspacoWidget extends StatelessWidget {
  final VincularGestorReservaAoEspacoController controller;
  const VincularGestorReservaAoEspacoWidget({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return FormVinculoGestorReservaEspacoWidget(controller: controller);
  }
}
