import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:uniespaco/layers/domain/entities/servico_entity.dart';
import 'package:uniespaco/layers/domain/entities/situacao_solicitacao_enum.dart';
import 'package:uniespaco/layers/ui/presenters/avaliar_solicitacao_servico/avaliar_solicitacao_servico_controller.dart';
import 'package:uniespaco/layers/ui/presenters/avaliar_solicitacao_servico/avaliar_solicitacao_servico_widget.dart';
import 'package:uniespaco/layers/ui/widgets/appbar_widget.dart';
import 'package:uniespaco/layers/ui/widgets/profile_info_widget.dart';

class AvaliarSolicitacaoServicoPage extends StatefulWidget {
  final ServicoEntity servico;

  const AvaliarSolicitacaoServicoPage({super.key, required this.servico});

  @override
  State<AvaliarSolicitacaoServicoPage> createState() => _AvaliarSolicitacaoServicoPageState();
}

class _AvaliarSolicitacaoServicoPageState extends State<AvaliarSolicitacaoServicoPage> {
  AvaliarSolicitacaoServicoController controller = GetIt.instance.get();

  @override
  initState() {
    controller.servico = widget.servico;
    controller.init(espacoId: widget.servico.espacoId, usuarioId: widget.servico.solicitanteId);
    switch (widget.servico.status) {
      case "Em Analise":
        controller.situacao = Situacao.EM_ANALISE;
        break;
      case "Homologado":
        controller.situacao = Situacao.HOMOLOGADO;
        break;
      case "Cancelada":
        controller.situacao = Situacao.CANCELADO;
        break;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: controller,
        builder: (context, widget) {
          return Scaffold(
            appBar: AppBar(
              title: const AppBarWidget(),
            ),
            drawer: const ProfileInfoWidget(),
            body: controller.loading.value
                ? Container(
                    child: Center(child: CircularProgressIndicator()),
                  )
                : SingleChildScrollView(
                    child: Column(
                      children: [
                        const Center(heightFactor: 2, child: Text('Avaliação de solicitação para servico')),
                        const Divider(),
                        AvaliarSolicitacaoServicoWidget(controller: controller),
                      ],
                    ),
                  ),
          );
        });
  }
}
