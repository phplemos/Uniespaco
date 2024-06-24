import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:uniespaco/layers/domain/entities/reserva_entity.dart';
import 'package:uniespaco/layers/ui/presenters/avaliar_solicitacao_reserva/avaliar_solicitacao_reserva_controller.dart';
import 'package:uniespaco/layers/ui/presenters/avaliar_solicitacao_reserva/avaliar_solicitacao_reserva_widget.dart';
import 'package:uniespaco/layers/ui/widgets/appbar_widget.dart';
import 'package:uniespaco/layers/ui/widgets/profile_info_widget.dart';

class AvaliarSolicitacaoReservaPage extends StatefulWidget {
  final ReservaEntity reserva;

  const AvaliarSolicitacaoReservaPage({super.key, required this.reserva});

  @override
  State<AvaliarSolicitacaoReservaPage> createState() => _AvaliarSolicitacaoReservaPageState();
}

class _AvaliarSolicitacaoReservaPageState extends State<AvaliarSolicitacaoReservaPage> {
  AvaliarSolicitacaoReservaController controller = GetIt.instance.get();

  @override
  initState() {
    controller.reserva = widget.reserva;
    controller.init(espacoId: widget.reserva.espacoId, usuarioId: widget.reserva.solicitanteId);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: controller,
        builder: (context, widget) {
          return controller.loading.value
              ? Container(
                  child: Center(child: CircularProgressIndicator()),
                )
              : Scaffold(
                  appBar: AppBar(title: Text('Avaliar solicitação reserva')),
                  body: Column(
                    children: [
                      const Center(heightFactor: 2, child: Text('Avaliação de solicitação para reserva')),
                      const Divider(),
                      AvaliarSolicitacaoReservaWidget(controller: controller),
                    ],
                  ),
                );
        });
  }
}
