import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:uniespaco/layers/ui/presenters/vincular_gestor_reserva_ao_espaco/vincular_gestor_reserva_ao_espaco_controller.dart';
import 'package:uniespaco/layers/ui/presenters/vincular_gestor_reserva_ao_espaco/vincular_gestor_reserva_ao_espaco_widget.dart';
import 'package:uniespaco/layers/ui/widgets/appbar_widget.dart';
import 'package:uniespaco/layers/ui/widgets/profile_info_widget.dart';

class VincularGestorReservaAoEspacoPage extends StatelessWidget {
  const VincularGestorReservaAoEspacoPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = GetIt.I.get<VincularGestorReservaAoEspacoController>();
    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        return Scaffold(
          appBar: AppBar(
            title: const AppBarWidget(),
          ),
          drawer: const ProfileInfoWidget(),
          body: VincularGestorReservaAoEspacoWidget(controller: controller),
        );
      },
    );
  }
}
