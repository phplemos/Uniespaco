import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:uniespaco/layers/ui/presenters/minhas_reservas/minhas_reservas_controller.dart';
import 'package:uniespaco/layers/ui/presenters/minhas_reservas/minhas_reservas_widget.dart';
import 'package:uniespaco/layers/ui/widgets/appbar_widget.dart';
import 'package:uniespaco/layers/ui/widgets/barra_de_pesquisa_widget.dart';
import 'package:uniespaco/layers/ui/widgets/profile_info_widget.dart';

class MinhasReservasPage extends StatefulWidget {
  const MinhasReservasPage({super.key});

  @override
  State<MinhasReservasPage> createState() => _MinhasReservasPageState();
}

class _MinhasReservasPageState extends State<MinhasReservasPage> {
  final MinhasReservasController controller = GetIt.instance.get<MinhasReservasController>();

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
            body: MinhasReservasWidget(controller: controller),
          );
        });
  }
}
