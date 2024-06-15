// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:uniespaco/layers/domain/entities/horario_entity.dart';

class HorarioDto {
  String? id;

  final String inicio;

  final String fim;

  String? gestorServico;

  String? gestorReserva;

  bool isReserved;

  String? reservaId;

  String? servicoId;

  HorarioDto({
    this.id,
    required this.inicio,
    required this.fim,
    this.gestorReserva,
    this.gestorServico,
    this.isReserved = false,
    this.reservaId,
    this.servicoId,
  });

  HorarioDto copyWith({
    String? id,
    String? inicio,
    String? fim,
    String? gestorServico,
    String? gestorReserva,
    bool? isReserved,
    String? reservaId,
    String? servicoId,
  }) {
    return HorarioDto(
      id: id ?? this.id,
      inicio: inicio ?? this.inicio,
      fim: fim ?? this.fim,
      gestorServico: gestorServico ?? this.gestorServico,
      gestorReserva: gestorReserva ?? this.gestorReserva,
      isReserved: isReserved ?? this.isReserved,
      reservaId: reservaId ?? this.reservaId,
      servicoId: servicoId ?? this.servicoId,
    );
  }

  factory HorarioDto.fromFirestore(DocumentSnapshot<Map<String, dynamic>> snapshot, SnapshotOptions? options) {
    final data = snapshot.data();
    return HorarioDto(
      id: data?['id'],
      inicio: data?['inicio'],
      fim: data?['fim'],
      gestorReserva: data?['gestorReserva'],
      gestorServico: data?['gestorServico'],
      isReserved: data?['isReserved'],
      reservaId: data?['reservaId'],
      servicoId: data?['servicoId'],
    );
  }

  Map<String, dynamic> toFirestore() {
    return {
      'id': id,
      'inicio': inicio,
      'fim': fim,
      'gestorReserva': gestorReserva,
      'gestorServico': gestorServico,
      'isReserved': isReserved,
      'reservaId': reservaId,
      'servicoId': servicoId,
    };
  }

  HorarioEntity toEntity() {
    return HorarioEntity(
      id: id,
      inicio: inicio,
      fim: fim,
      gestorServico: gestorServico,
      gestorReserva: gestorReserva,
      isReserved: isReserved,
      reservaId: reservaId,
      servicoId: servicoId,
    );
  }

  factory HorarioDto.fromEntity(HorarioEntity horarioEntity) {
    return HorarioDto(
      id: horarioEntity.id,
      inicio: horarioEntity.inicio,
      fim: horarioEntity.fim,
      gestorServico: horarioEntity.gestorServico,
      gestorReserva: horarioEntity.gestorReserva,
      isReserved: horarioEntity.isReserved,
      reservaId: horarioEntity.reservaId,
      servicoId: horarioEntity.servicoId,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'inicio': inicio,
      'fim': fim,
      'gestorReserva': gestorReserva,
      'gestorServico': gestorServico,
      'isReserved': isReserved,
      'reservaId': reservaId,
      'servicoId': servicoId,
    };
  }

  factory HorarioDto.fromMap(Map<String, dynamic> map) {
    return HorarioDto(
      id: map['id'],
      inicio: map['inicio'],
      fim: map['fim'],
      gestorServico: map['gestorServico'],
      gestorReserva: map['gestorReserva'],
      isReserved: map['isReserved'] as bool,
      reservaId: map['reservaId'],
      servicoId: map['servicoId'],
    );
  }

  String toJson() => json.encode(toMap());

  factory HorarioDto.fromJson(String source) => HorarioDto.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'HorarioDto(id: $id, inicio: $inicio, fim: $fim, gestorServico: $gestorServico, gestorReserva: $gestorReserva, isReserved: $isReserved, reservaId: $reservaId, servicoId: $servicoId)';
  }

  @override
  bool operator ==(covariant HorarioDto other) {
    if (identical(this, other)) return true;

    return other.inicio == inicio &&
        other.id == id &&
        other.fim == fim &&
        other.gestorServico == gestorServico &&
        other.gestorReserva == gestorReserva &&
        other.isReserved == isReserved &&
        other.reservaId == reservaId &&
        other.servicoId == servicoId;
  }

  @override
  int get hashCode {
    return id.hashCode ^ inicio.hashCode ^ fim.hashCode ^ gestorServico.hashCode ^ gestorReserva.hashCode ^ isReserved.hashCode ^ reservaId.hashCode ^ servicoId.hashCode;
  }
}
