import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:uniespaco/layers/ui/presenters/ver_historico_servicos_por_espaco_gerido/ver_historico_servicos_por_espaco_gerido_controller.dart';
import 'package:uniespaco/layers/ui/presenters/ver_historico_servicos_por_espaco_gerido/ver_historico_servicos_por_espaco_gerido_widget.dart';
import 'package:uniespaco/layers/ui/widgets/appbar_widget.dart';
import 'package:uniespaco/layers/ui/widgets/barra_de_pesquisa_widget.dart';
import 'package:uniespaco/layers/ui/widgets/profile_info_widget.dart';

class VerHistoricoServicosPorEspacoGeridoPage extends StatefulWidget {
  const VerHistoricoServicosPorEspacoGeridoPage({super.key});

  @override
  State<VerHistoricoServicosPorEspacoGeridoPage> createState() => _VerHistoricoServicosPorEspacoGeridoPageState();
}

class _VerHistoricoServicosPorEspacoGeridoPageState extends State<VerHistoricoServicosPorEspacoGeridoPage> {
  final VerHistoricoServicosPorEspacoGeridoController controller = GetIt.instance.get<VerHistoricoServicosPorEspacoGeridoController>();

  @override
  void initState() {
    controller.init();
    super.initState();
    // Add code after super
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        return Scaffold(
          appBar: AppBar(
            title: const AppBarWidget(),
            actions: [
              InkWell(
                child: const Icon(Icons.search),
                onTap: () {
                  showSearch(context: context, delegate: BarradePesquisaWidget());
                },
              )
            ],
          ),
          drawer: const ProfileInfoWidget(),
          body: VerHistoricoServicosPorEspacoGeridoWidget(controller: controller),
        );
      },
    );
  }
}
