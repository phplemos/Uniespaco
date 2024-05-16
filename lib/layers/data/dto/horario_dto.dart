// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:uniespaco/layers/data/dto/reserva_dto.dart';
import 'package:uniespaco/layers/domain/entities/horario_entity.dart';

class HorarioDto {
  final String inicio;

  final String fim;

  final bool isReserved;

  final ReservaDto? solicitanteReserva;

  HorarioDto({
    required this.inicio,
    required this.fim,
    required this.isReserved,
    this.solicitanteReserva,
  });

  HorarioDto copyWith({
    String? inicio,
    String? fim,
    bool? isReserved,
    ReservaDto? solicitanteReserva,
  }) {
    return HorarioDto(
      inicio: inicio ?? this.inicio,
      fim: fim ?? this.fim,
      isReserved: isReserved ?? this.isReserved,
      solicitanteReserva: solicitanteReserva ?? this.solicitanteReserva,
    );
  }

  HorarioEntity toEntity() {
    return HorarioEntity(
      inicio: inicio,
      fim: fim,
      isReserved: isReserved,
      solicitanteReserva: solicitanteReserva?.toEntity(),
    );
  }

  factory HorarioDto.fromEntity(HorarioEntity horarioEntity) {
    return HorarioDto(
      inicio: horarioEntity.inicio,
      fim: horarioEntity.fim,
      isReserved: horarioEntity.isReserved,
      solicitanteReserva: horarioEntity.solicitanteReserva != null ? ReservaDto.fromEntity(horarioEntity.solicitanteReserva!) : null,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inicio': inicio,
      'fim': fim,
      'isReserved': isReserved,
      'solicitanteReserva': solicitanteReserva?.toMap(),
    };
  }

  factory HorarioDto.fromMap(Map<String, dynamic> map) {
    return HorarioDto(
      inicio: map['inicio'],
      fim: map['fim'],
      isReserved: map['isReserved'] as bool,
      solicitanteReserva: map['solicitanteReserva'] != null ? ReservaDto.fromMap(map['solicitanteReserva'] as Map<String, dynamic>) : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory HorarioDto.fromJson(String source) => HorarioDto.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'HorarioDto(inicio: $inicio, fim: $fim, isReserved: $isReserved, solicitanteReserva: $solicitanteReserva)';
  }

  @override
  bool operator ==(covariant HorarioDto other) {
    if (identical(this, other)) return true;

    return other.inicio == inicio && other.fim == fim && other.isReserved == isReserved && other.solicitanteReserva == solicitanteReserva;
  }

  @override
  int get hashCode {
    return inicio.hashCode ^ fim.hashCode ^ isReserved.hashCode ^ solicitanteReserva.hashCode;
  }
}
