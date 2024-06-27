import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:uniespaco/layers/domain/entities/espaco_entity.dart';
import 'package:uniespaco/layers/shared/espaco_provider.dart';
import 'package:uniespaco/layers/ui/presenters/home/home_controller.dart';
import 'package:uniespaco/layers/ui/presenters/visualizar_espaco/visualizar_espaco.dart';

class BarradePesquisaWidget extends SearchDelegate {
  final HomeController controller = GetIt.I.get<HomeController>();

  @override
  String get searchFieldLabel => 'Busca por pavilhão';

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: const Icon(Icons.clear),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, []);
      },
      icon: const Icon(
        Icons.arrow_back,
        size: 22,
      ),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return SuggestionOrResultWidget(controller: controller, query: query);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return SuggestionOrResultWidget(controller: controller, query: query);
  }
}

// ignore: must_be_immutable
class SuggestionOrResultWidget extends StatelessWidget {
  SuggestionOrResultWidget({
    super.key,
    required this.query,
    required this.controller,
  });

  String? query;
  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    final List<EspacoEntity?> suggestionList = query!.isEmpty ? [] : controller.espacos.where((item) => item!.localizacao.pavilhao.toLowerCase().contains(query!.toLowerCase())).toList();
    return StatefulBuilder(
      builder: (context, setState) {
        return ListView.builder(
          itemCount: suggestionList.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => VisualizarEspacoPage(espacoEntity: suggestionList[index]!))),
              child: CheckboxListTile(
                title: Text('Numero: ${suggestionList[index]!.localizacao.numero}'),
                subtitle: Text('Campus: ${suggestionList[index]!.localizacao.campus}, Pavilhão ${suggestionList[index]!.localizacao.pavilhao}'),
                value: controller.espacosFavoritos.contains(suggestionList[index]),
                onChanged: (bool? value) {
                  setState(() {
                    if (value!) {
                      controller.favoritarEspaco(espaco: suggestionList[index]!);
                    } else {
                      controller.desfavoritarEspaco(espaco: suggestionList[index]!);
                    }
                  });
                },
              ),
            );
          },
        );
      },
    );
  }
}

class NoResultWidget extends StatelessWidget {
  const NoResultWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Resultado não encontrado'),
    );
  }
}
