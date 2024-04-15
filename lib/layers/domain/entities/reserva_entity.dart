import 'package:uniespaco/layers/data/dto/reserva_dto.dart';
import 'package:uniespaco/layers/domain/entities/espaco_entity.dart';
import 'package:uniespaco/layers/domain/entities/horario_entity.dart';
import 'package:uniespaco/layers/domain/entities/usuario_entity.dart';

class ReservaEntity {
  final String id;
  final EspacoEntity espaco;
  final UsuarioEntity solicitante;
  final String descricao;
  final String status;
  final List<HorarioEntity> periodo;

  ReservaEntity({
    required this.id,
    required this.espaco,
    required this.solicitante,
    required this.descricao,
    required this.status,
    required this.periodo,
  });

  ReservaDto toDto() {
    return ReservaDto(
      id: id,
      espaco: espaco.toDto(),
      solicitante: solicitante.toDto(),
      descricao: descricao,
      status: status,
      periodo: periodo.map((e) => e.toDto()).toList(),
    );
  }

  factory ReservaEntity.fromDto(ReservaDto reservaDto) {
    return ReservaEntity(
      id: reservaDto.id,
      espaco: EspacoEntity.fromDto(reservaDto.espaco),
      solicitante: UsuarioEntity.fromDto(reservaDto.solicitante),
      descricao: reservaDto.descricao,
      status: reservaDto.status,
      periodo: reservaDto.periodo.map((e) => HorarioEntity.fromDto(e)).toList(),
    );
  }
}
