import 'package:uniespaco/layers/data/dto/espaco_dto.dart';
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

  EspacoDto toDto() {
    return EspacoDto(
      id: id,
      localizacao: localizacao.toDto(),
      capacidadePessoas: capacidadePessoas,
      equipamentoDisponivel: equipamentoDisponivel?.map((e) => e.toDto()).toList(),
      acessibilidade: acessibilidade,
      agenda: agenda.toDto(),
      servicos: servicos?.map((e) => e.toDto()).toList(),
    );
  }

  factory EspacoEntity.fromDto(EspacoDto espacoDto) {
    return EspacoEntity(
      id: espacoDto.id,
      localizacao: LocalizacaoEntity.fromDto(espacoDto.localizacao),
      capacidadePessoas: espacoDto.capacidadePessoas,
      equipamentoDisponivel: espacoDto.equipamentoDisponivel?.map((e) => EquipamentoEntity.fromDto(e)).toList(),
      acessibilidade: espacoDto.acessibilidade,
      agenda: AgendaEntity.fromDto(espacoDto.agenda),
      servicos: espacoDto.servicos?.map((e) => ServicoEntity.fromDto(e)).toList(),
    );
  }
}
