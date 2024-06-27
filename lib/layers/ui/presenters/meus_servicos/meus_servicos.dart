import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:uniespaco/layers/ui/presenters/meus_servicos/meus_servicos_controller.dart';
import 'package:uniespaco/layers/ui/presenters/meus_servicos/meus_servicos_widget.dart';
import 'package:uniespaco/layers/ui/widgets/appbar_widget.dart';
import 'package:uniespaco/layers/ui/widgets/barra_de_pesquisa_widget.dart';
import 'package:uniespaco/layers/ui/widgets/profile_info_widget.dart';

class MeusServicosPage extends StatefulWidget {
  const MeusServicosPage({super.key});

  @override
  State<MeusServicosPage> createState() => _MeusServicosPageState();
}

class _MeusServicosPageState extends State<MeusServicosPage> {
  final MeusServicosController controller = GetIt.instance.get<MeusServicosController>();

  @override
  void initState() {
    controller.init();
    super.initState();
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
            body: MeusServicosWidget(controller: controller),
          );
        });
  }
}
