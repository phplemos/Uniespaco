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
}
