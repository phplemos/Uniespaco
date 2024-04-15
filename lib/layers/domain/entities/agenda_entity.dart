import 'package:uniespaco/layers/data/dto/agenda_dto.dart';
import 'package:uniespaco/layers/domain/entities/horario_entity.dart';
import 'package:uniespaco/layers/domain/entities/usuario_entity.dart';

class AgendaEntity {
  final String id;

  final String? observacao;

  final UsuarioEntity gestorServico;

  final UsuarioEntity gestorReserva;

  final List<HorarioEntity> horarios;

  AgendaEntity({
    required this.id,
    this.observacao,
    required this.gestorServico,
    required this.gestorReserva,
    required this.horarios,
  });

  AgendaDto toDto() {
    return AgendaDto(
      id: id,
      observacao: observacao,
      gestorServico: gestorServico.toDto(),
      gestorReserva: gestorReserva.toDto(),
      horarios: horarios.map((e) => e.toDto()).toList(),
    );
  }

  factory AgendaEntity.fromDto(AgendaDto agendaDto) {
    return AgendaEntity(
      id: agendaDto.id,
      observacao: agendaDto.observacao,
      gestorServico: UsuarioEntity.fromDto(agendaDto.gestorServico),
      gestorReserva: UsuarioEntity.fromDto(agendaDto.gestorReserva),
      horarios: agendaDto.horarios.map((horario) => HorarioEntity.fromDto(horario)).toList(),
    );
  }
}
