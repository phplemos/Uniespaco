import 'package:uniespaco/layers/data/dto/servico_dto.dart';
import 'package:uniespaco/layers/domain/entities/espaco_entity.dart';
import 'package:uniespaco/layers/domain/entities/horario_entity.dart';
import 'package:uniespaco/layers/domain/entities/usuario_entity.dart';

class ServicoEntity {
  final String id;
  final String descricao;
  final String status;
  final UsuarioEntity solicitante;
  final List<HorarioEntity> periodo;
  final EspacoEntity espaco;

  ServicoEntity({
    required this.id,
    required this.descricao,
    required this.status,
    required this.solicitante,
    required this.periodo,
    required this.espaco,
  });

  ServicoDto toDto() {
    return ServicoDto(
      id: id,
      descricao: descricao,
      status: status,
      solicitante: solicitante.toDto(),
      periodo: periodo.map((e) => e.toDto()).toList(),
      espaco: espaco.toDto(),
    );
  }

  factory ServicoEntity.fromDto(ServicoDto servicoDto) {
    return ServicoEntity(
      id: servicoDto.id,
      descricao: servicoDto.descricao,
      status: servicoDto.status,
      solicitante: UsuarioEntity.fromDto(servicoDto.solicitante),
      periodo: servicoDto.periodo.map((e) => HorarioEntity.fromDto(e)).toList(),
      espaco: EspacoEntity.fromDto(servicoDto.espaco),
    );
  }
}
