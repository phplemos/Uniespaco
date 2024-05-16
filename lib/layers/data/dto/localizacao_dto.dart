// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:uniespaco/layers/domain/entities/localizacao_entity.dart';

class LocalizacaoDto {
  final String campus;

  final String pavilhao;

  final int andar;

  final int numero;
  LocalizacaoDto({
    required this.campus,
    required this.pavilhao,
    required this.andar,
    required this.numero,
  });

  LocalizacaoDto copyWith({
    String? campus,
    String? pavilhao,
    int? andar,
    int? numero,
  }) {
    return LocalizacaoDto(
      campus: campus ?? this.campus,
      pavilhao: pavilhao ?? this.pavilhao,
      andar: andar ?? this.andar,
      numero: numero ?? this.numero,
    );
  }

  LocalizacaoEntity toEntity() {
    return LocalizacaoEntity(
      campus: campus,
      pavilhao: pavilhao,
      andar: andar,
      numero: numero,
    );
  }

  factory LocalizacaoDto.fromEntity(LocalizacaoEntity localizacaoEntity) {
    return LocalizacaoDto(
      campus: localizacaoEntity.campus,
      pavilhao: localizacaoEntity.pavilhao,
      andar: localizacaoEntity.andar,
      numero: localizacaoEntity.numero,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'campus': campus,
      'pavilhao': pavilhao,
      'andar': andar,
      'numero': numero,
    };
  }

  factory LocalizacaoDto.fromMap(Map<String, dynamic> map) {
    return LocalizacaoDto(
      campus: map['campus'] as String,
      pavilhao: map['pavilhao'] as String,
      andar: map['andar'] as int,
      numero: map['numero'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory LocalizacaoDto.fromJson(String source) => LocalizacaoDto.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'LocalizacaoDto(campus: $campus, pavilhao: $pavilhao, andar: $andar, numero: $numero)';
  }

  @override
  bool operator ==(covariant LocalizacaoDto other) {
    if (identical(this, other)) return true;

    return other.campus == campus && other.pavilhao == pavilhao && other.andar == andar && other.numero == numero;
  }

  @override
  int get hashCode {
    return campus.hashCode ^ pavilhao.hashCode ^ andar.hashCode ^ numero.hashCode;
  }
}
