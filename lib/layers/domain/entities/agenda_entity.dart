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
}
