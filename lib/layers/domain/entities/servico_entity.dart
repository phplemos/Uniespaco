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
}
