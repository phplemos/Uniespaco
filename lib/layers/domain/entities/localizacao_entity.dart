import 'package:uniespaco/layers/data/dto/localizacao_dto.dart';

class LocalizacaoEntity {
  final String campus;

  final String pavilhao;

  final int andar;

  final int numero;

  LocalizacaoEntity({
    required this.campus,
    required this.pavilhao,
    required this.andar,
    required this.numero,
  });

  LocalizacaoDto toDto() {
    return LocalizacaoDto(
      campus: campus,
      pavilhao: pavilhao,
      andar: andar,
      numero: numero,
    );
  }

  factory LocalizacaoEntity.fromDto(LocalizacaoDto localizacaoDto) {
    return LocalizacaoEntity(
      campus: localizacaoDto.campus,
      pavilhao: localizacaoDto.pavilhao,
      andar: localizacaoDto.andar,
      numero: localizacaoDto.numero,
    );
  }
}
