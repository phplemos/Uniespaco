import 'package:intl/intl.dart';
import 'package:uniespaco/layers/data/dto/agenda_dto.dart';
import 'package:uniespaco/layers/data/dto/horario_dto.dart';
import 'package:uniespaco/layers/data/dto/usuario_dto.dart';
import 'package:uniespaco/layers/domain/entities/usuario_entity.dart';
import 'package:uuid/uuid.dart';

class AgendaInitializer {
  static Map<String, Map<String, Map<String, dynamic>>> createAgenda({required DateTime dayToInit}) {
    final uuid = Uuid();
    Map<String, Map<String, Map<String, dynamic>>> newAgenda = {};
    DateTime endDate = dayToInit.add(const Duration(days: 15));
    for (DateTime date = dayToInit; date.isBefore(endDate); date = date.add(const Duration(days: 1))) {
      final formatedDate = DateFormat('yyyy-MM-dd').format(date);
      newAgenda[formatedDate] = {
        'manha': AgendaDto(id: uuid.v4(), horarios: getManha()).toMap(),
        'tarde': AgendaDto(id: uuid.v4(), horarios: getTarde()).toMap(),
        'noite': AgendaDto(id: uuid.v4(), horarios: getNoite()).toMap(),
      };
    }
    return newAgenda;
  }

  static Map<String, Map<String, Map<String, dynamic>>> updateGestoresAgenda({required DateTime dayToInit, required DateTime dayToEnd, required Map<String, Map<String, UsuarioEntity>> gestores}) {
    const uuid = Uuid();
    Map<String, Map<String, Map<String, dynamic>>> newAgenda = {};
    for (DateTime date = dayToInit; date.isBefore(dayToEnd); date = date.add(const Duration(days: 1))) {
      final formatedDate = DateFormat('yyyy-MM-dd').format(date);
      newAgenda[formatedDate] = {
        'manha': AgendaDto(id: uuid.v4(), gestorReserva:UsuarioDto.fromEntity(gestores['manha']!['reserva']!), gestorServico: UsuarioDto.fromEntity(gestores['manha']!['servico']!), horarios: getManha()).toMap(),
        'tarde': AgendaDto(id: uuid.v4(), gestorReserva: UsuarioDto.fromEntity(gestores['tarde']!['reserva']!), gestorServico: UsuarioDto.fromEntity(gestores['tarde']!['servico']!), horarios: getTarde()).toMap(),
        'noite': AgendaDto(id: uuid.v4(), gestorReserva: UsuarioDto.fromEntity(gestores['noite']!['reserva']!), gestorServico: UsuarioDto.fromEntity(gestores['noite']!['servico']!), horarios: getNoite()).toMap(),
      };
    }
    return newAgenda;
  }

  static List<HorarioDto> getManha() {
    return [
      HorarioDto(inicio: '7:30', fim: '9:10', isReserved: false),
      HorarioDto(inicio: '9:10', fim: '10:10', isReserved: false),
      HorarioDto(inicio: '10:10', fim: '11:00', isReserved: false),
      HorarioDto(inicio: '11:00', fim: '11:50', isReserved: false),
      HorarioDto(inicio: '11:50', fim: '12:40', isReserved: false),
    ];
  }

  static List<HorarioDto> getTarde() {
    return [
      HorarioDto(inicio: '13:10', fim: '14:00', isReserved: false),
      HorarioDto(inicio: '14:00', fim: '14:50', isReserved: false),
      HorarioDto(inicio: '14:50', fim: '15:40', isReserved: false),
      HorarioDto(inicio: '15:50', fim: '16:40', isReserved: false),
      HorarioDto(inicio: '16:40', fim: '17:30', isReserved: false),
      HorarioDto(inicio: '17:30', fim: '18:20', isReserved: false),
    ];
  }

  static List<HorarioDto> getNoite() {
    return [
      HorarioDto(inicio: '7:30', fim: '9:10', isReserved: false),
      HorarioDto(inicio: '9:10', fim: '10:10', isReserved: false),
      HorarioDto(inicio: '10:10', fim: '11:00', isReserved: false),
      HorarioDto(inicio: '11:00', fim: '11:50', isReserved: false),
      HorarioDto(inicio: '11:50', fim: '12:40', isReserved: false),
    ];
  }
}

/*
*
* */
