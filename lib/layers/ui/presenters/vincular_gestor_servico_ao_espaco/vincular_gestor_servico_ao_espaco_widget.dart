// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:uniespaco/layers/ui/presenters/vincular_gestor_servico_ao_espaco/form/form_vinculo_gestor_servico_espaco_widget.dart';
import 'package:uniespaco/layers/ui/presenters/vincular_gestor_servico_ao_espaco/vincular_gestor_servico_ao_espaco_controller.dart';



class VincularGestorServicoAoEspacoWidget extends StatelessWidget {
  final VincularGestorServicoAoEspacoController controller;
  const VincularGestorServicoAoEspacoWidget({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return FormVinculoGestorServicoEspacoWidget(controller: controller);
  }
}
