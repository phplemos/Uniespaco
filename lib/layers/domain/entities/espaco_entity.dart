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

  final AgendaEntity agenda;

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
}
