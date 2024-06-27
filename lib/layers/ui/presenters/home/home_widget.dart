// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:uniespaco/layers/ui/presenters/home/components/listar_espacos_favoritos_widget.dart';
import 'package:uniespaco/layers/ui/presenters/home/components/listar_espacos_widget.dart';
import 'package:uniespaco/layers/ui/presenters/home/components/minhas_reservas_home_widget.dart';
import 'package:uniespaco/layers/ui/presenters/home/home_controller.dart';

class HomeWidget extends StatelessWidget {
  final HomeController controller;

  const HomeWidget({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const Center(
            heightFactor: 2,
            child: Text(
              'Espacos Favoritos',
            ),
          ),
          Divider(),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 3,
            child: ListarEspacosFavoritosWidget(controller: controller),
          ),
          const Center(
            heightFactor: 2,
            child: Text(
              'Minhas Reservas',
            ),
          ),
          Divider(),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 3,
            child: MinhasReservasHomeWidget(controller: controller),
          )
        ],
      ),
    );
  }
}
