import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:uniespaco/layers/domain/entities/espaco_entity.dart';
import 'package:uniespaco/layers/shared/espaco_provider.dart';

class BarradePesquisaWidget extends SearchDelegate {
  final EspacosProvider pesquisaEspacos = GetIt.I.get();
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
    return SuggestionOrResultWidget(espaco: pesquisaEspacos, query: query);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return SuggestionOrResultWidget(espaco: pesquisaEspacos, query: query);
  }
}

class SuggestionOrResultWidget extends StatelessWidget {
  SuggestionOrResultWidget({
    super.key,
    required this.query,
    required this.espaco,
  });

  String? query;
  final EspacosProvider espaco;

  @override
  Widget build(BuildContext context) {
    final List<EspacoEntity?> suggestionList = query!.isEmpty ? [] : espaco.espacos!.where((item) => item!.localizacao.pavilhao.toLowerCase().contains(query!.toLowerCase())).toList();

    return StatefulBuilder(
      builder: (context, setState) {
        return ListView.builder(
          itemCount: suggestionList.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('Numero: ${suggestionList[index]!.localizacao.numero}'),
              subtitle: Text('Campus: ${suggestionList[index]!.localizacao.campus}, Pavilhão ${suggestionList[index]!.localizacao.pavilhao}'),
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
