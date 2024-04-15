import 'package:uniespaco/layers/data/dto/equipamento_dto.dart';

class EquipamentoEntity {
  final String id;
  final String nome;
  final String tipo;
  final String numTombo;

  EquipamentoEntity({
    required this.id,
    required this.nome,
    required this.tipo,
    required this.numTombo,
  });

  EquipamentoDto toDto() {
    return EquipamentoDto(
      id: id,
      nome: nome,
      tipo: tipo,
      numTombo: numTombo,
    );
  }

  factory EquipamentoEntity.fromDto(EquipamentoDto equipamentoDto) {
    return EquipamentoEntity(
      id: equipamentoDto.id,
      nome: equipamentoDto.nome,
      tipo: equipamentoDto.tipo,
      numTombo: equipamentoDto.numTombo,
    );
  }
}
