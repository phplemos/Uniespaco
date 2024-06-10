// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:uniespaco/layers/domain/entities/horario_entity.dart';

class HorarioDto {
  final String inicio;

  final String fim;

  String? gestorServico;

  String? gestorReserva;

  final bool isReserved;

  final String? solicitanteReservaId;

  final String? solicitanteServicoId;

  HorarioDto({
    required this.inicio,
    required this.fim,
    required this.isReserved,
    this.gestorReserva,
    this.gestorServico,
    this.solicitanteReservaId,
    this.solicitanteServicoId,
  });

  HorarioDto copyWith({
    String? inicio,
    String? fim,
    String? gestorServico,
    String? gestorReserva,
    bool? isReserved,
    String? solicitanteReservaId,
    String? solicitanteServicoId,
  }) {
    return HorarioDto(
      inicio: inicio ?? this.inicio,
      fim: fim ?? this.fim,
      gestorServico: gestorServico ?? this.gestorServico,
      gestorReserva: gestorReserva ?? this.gestorReserva,
      isReserved: isReserved ?? this.isReserved,
      solicitanteReservaId: solicitanteReservaId ?? this.solicitanteReservaId,
      solicitanteServicoId: solicitanteServicoId ?? this.solicitanteServicoId,
    );
  }

  factory HorarioDto.fromFirestore(DocumentSnapshot<Map<String, dynamic>> snapshot, SnapshotOptions? options) {
    final data = snapshot.data();
    return HorarioDto(
      inicio: data?['id'],
      fim: data?['fim'],
      gestorReserva: data?['gestorReserva'],
      gestorServico: data?['gestorServico'],
      isReserved: data?['isReserved'],
      solicitanteReservaId: data?['solicitanteReservaId'],
      solicitanteServicoId: data?['solicitanteServicoId'],
    );
  }

  Map<String, dynamic> toFirestore() {
    return {
      'inicio': inicio,
      'fim': fim,
      'gestorReserva': gestorReserva,
      'gestorServico': gestorServico,
      'isReserved': isReserved,
      'solicitanteReservaId': solicitanteReservaId,
      'solicitanteServicoId': solicitanteServicoId,
    };
  }

  HorarioEntity toEntity() {
    return HorarioEntity(
      inicio: inicio,
      fim: fim,
      gestorServico: gestorServico,
      gestorReserva: gestorReserva,
      isReserved: isReserved,
      solicitanteReservaId: solicitanteReservaId,
      solicitanteServicoId: solicitanteServicoId,
    );
  }

  factory HorarioDto.fromEntity(HorarioEntity horarioEntity) {
    return HorarioDto(
      inicio: horarioEntity.inicio,
      fim: horarioEntity.fim,
      gestorServico: horarioEntity.gestorServico,
      gestorReserva: horarioEntity.gestorReserva,
      isReserved: horarioEntity.isReserved,
      solicitanteReservaId: horarioEntity.solicitanteReservaId,
      solicitanteServicoId: horarioEntity.solicitanteServicoId,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inicio': inicio,
      'fim': fim,
      'gestorReserva': gestorReserva,
      'gestorServico': gestorServico,
      'isReserved': isReserved,
      'solicitanteReservaId': solicitanteReservaId,
      'solicitanteServicoId': solicitanteServicoId,
    };
  }

  factory HorarioDto.fromMap(Map<String, dynamic> map) {
    return HorarioDto(
      inicio: map['inicio'],
      fim: map['fim'],
      gestorServico: map['gestorServico'],
      gestorReserva: map['gestorReserva'],
      isReserved: map['isReserved'] as bool,
      solicitanteReservaId: map['solicitanteReservaId'],
      solicitanteServicoId: map['solicitanteServicoId'],
    );
  }

  String toJson() => json.encode(toMap());

  factory HorarioDto.fromJson(String source) => HorarioDto.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'HorarioDto(inicio: $inicio, fim: $fim, gestorServico: $gestorServico, gestorReserva: $gestorReserva, isReserved: $isReserved, solicitanteReservaId: $solicitanteReservaId, solicitanteServicoId: $solicitanteServicoId)';
  }

  @override
  bool operator ==(covariant HorarioDto other) {
    if (identical(this, other)) return true;

    return other.inicio == inicio && other.fim == fim && other.gestorServico == gestorServico && other.gestorReserva == gestorReserva && other.isReserved == isReserved && other.solicitanteReservaId == solicitanteReservaId;
  }

  @override
  int get hashCode {
    return inicio.hashCode ^ fim.hashCode ^ gestorServico.hashCode ^ gestorReserva.hashCode ^ isReserved.hashCode ^ solicitanteReservaId.hashCode;
  }
}
