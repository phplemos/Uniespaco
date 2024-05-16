// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/foundation.dart';
import 'package:uniespaco/layers/domain/entities/agenda_entity.dart';
import 'package:uniespaco/layers/domain/entities/equipamento_entity.dart';
import 'package:uniespaco/layers/domain/entities/localizacao_entity.dart';
import 'package:uniespaco/layers/domain/entities/servico_entity.dart';

class EspacoEntity {
  final String id;

  final LocalizacaoEntity localizacao;

  final int capacidadePessoas;

  final List<EquipamentoEntity>? equipamentoDisponivel;

  final bool acessibilidade;

  Map<DateTime, Map<String, AgendaEntity>> agenda;

  final List<ServicoEntity>? servicos;
  EspacoEntity({
    required this.id,
    required this.localizacao,
    required this.capacidadePessoas,
    this.equipamentoDisponivel,
    required this.acessibilidade,
    required this.agenda,
    this.servicos,
  });

  @override
  String toString() {
    return 'EspacoEntity(id: $id, localizacao: $localizacao, capacidadePessoas: $capacidadePessoas, equipamentoDisponivel: $equipamentoDisponivel, acessibilidade: $acessibilidade, agenda: $agenda, servicos: $servicos)';
  }

  @override
  bool operator ==(covariant EspacoEntity other) {
    if (identical(this, other)) return true;

    return other.id == id && other.localizacao == localizacao && other.capacidadePessoas == capacidadePessoas && listEquals(other.equipamentoDisponivel, equipamentoDisponivel) && other.acessibilidade == acessibilidade && mapEquals(other.agenda, agenda) && listEquals(other.servicos, servicos);
  }

  @override
  int get hashCode {
    return id.hashCode ^ localizacao.hashCode ^ capacidadePessoas.hashCode ^ equipamentoDisponivel.hashCode ^ acessibilidade.hashCode ^ agenda.hashCode ^ servicos.hashCode;
  }
}

enum Campus {
  JEQUIE(text: "Jequié"),
  VITORIADACONQUISTA(text: "Vitória da Conquista"),
  ITAPETINGA(text: "Itapetinga"),
  CAMPUS(text: "Campus");

  final String? text;

  const Campus({this.text});
}
