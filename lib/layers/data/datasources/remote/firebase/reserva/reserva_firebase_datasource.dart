import 'package:uniespaco/layers/domain/entities/reserva_entity.dart';

class ReservaFirebaseDataSource {
  Future<List<ReservaEntity?>> getAllReservas() {
    throw UnimplementedError();
  }

  Future<ReservaEntity?> getReservaById({required String id}) {
    throw UnimplementedError();
  }

  Future<bool> createReserva({required ReservaEntity reservaEntity}) {
    throw UnimplementedError();
  }

  Future<bool> updateReserva({required ReservaEntity reservaEntity}) {
    throw UnimplementedError();
  }

  Future<bool> deleteReserva({required String id}) {
    throw UnimplementedError();
  }
}
