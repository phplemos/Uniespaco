import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:uniespaco/layers/ui/widgets/appbar_widget.dart';
import 'package:uniespaco/layers/ui/widgets/barra_de_pesquisa_widget.dart';
import 'package:uniespaco/layers/ui/widgets/profile_info_widget.dart';
import 'package:uniespaco/layers/ui/presenters/home/home_controller.dart';
import 'package:uniespaco/layers/ui/presenters/home/home_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeController controller = GetIt.I.get<HomeController>();

  @override
  initState() {
    controller.init();
    super.initState();
  }

  @override
  void setState(VoidCallback fn) {
    controller.init();
    super.setState(fn);
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
          body: HomeWidget(controller: controller),
        );
      },
    );
  }
}
