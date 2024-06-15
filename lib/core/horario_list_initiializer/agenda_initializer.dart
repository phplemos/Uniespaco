import 'package:intl/intl.dart';
import 'package:uniespaco/layers/data/dto/agenda_dto.dart';
import 'package:uniespaco/layers/data/dto/horario_dto.dart';
import 'package:uuid/uuid.dart';

class AgendaInitializer {
  static const uuid = Uuid();

  static Map<String, Map<String, Map<String, dynamic>>> createAgenda({required DateTime dayToInit}) {
    Map<String, Map<String, Map<String, dynamic>>> newAgenda = {};

    DateTime endDate = dayToInit.add(const Duration(days: 15));
    for (DateTime date = dayToInit; date.isBefore(endDate); date = date.add(const Duration(days: 1))) {
      final formatedDate = DateFormat('yyyy-MM-dd').format(date);
      newAgenda[formatedDate] = {
        'manha': AgendaDto(horarios: getManha()).toMap(),
        'tarde': AgendaDto(horarios: getTarde()).toMap(),
        'noite': AgendaDto(horarios: getNoite()).toMap(),
      };
    }
    return newAgenda;
  }

  static Map<String, Map<String, Map<String, dynamic>>> updateGestoresAgenda({required DateTime dayToInit, required DateTime dayToEnd, required Map<String, Map<String, String>> gestores}) {
    Map<String, Map<String, Map<String, dynamic>>> newAgenda = {};
    for (DateTime date = dayToInit; date.isBefore(dayToEnd); date = date.add(const Duration(days: 1))) {
      final formatedDate = DateFormat('yyyy-MM-dd').format(date);
      newAgenda[formatedDate] = {
        'manha': AgendaDto(horarios: getManha(gestores: gestores)).toMap(),
        'tarde': AgendaDto(horarios: getTarde(gestores: gestores)).toMap(),
        'noite': AgendaDto(horarios: getNoite(gestores: gestores)).toMap(),
      };
    }
    return newAgenda;
  }

  static List<HorarioDto> getManha({Map<String, Map<String, String>>? gestores}) {
    return [
      HorarioDto(id: uuid.v4(), inicio: '7:30', fim: '9:10', gestorReserva: gestores?['7:30']!['reserva']!, gestorServico: gestores?['7:30']!['servico']!, isReserved: false),
      HorarioDto(id: uuid.v4(), inicio: '9:10', fim: '10:10', gestorReserva: gestores?['9:10']!['reserva']!, gestorServico: gestores?['9:10']!['servico']!, isReserved: false),
      HorarioDto(id: uuid.v4(), inicio: '10:10', fim: '11:00', gestorReserva: gestores?['10:10']!['reserva']!, gestorServico: gestores?['10:10']!['servico']!, isReserved: false),
      HorarioDto(id: uuid.v4(), inicio: '11:00', fim: '11:50', gestorReserva: gestores?['11:00']!['reserva']!, gestorServico: gestores?['11:00']!['servico']!, isReserved: false),
      HorarioDto(id: uuid.v4(), inicio: '11:50', fim: '12:40', gestorReserva: gestores?['11:50']!['reserva']!, gestorServico: gestores?['11:50']!['servico']!, isReserved: false),
    ];
  }

  static List<HorarioDto> getTarde({Map<String, Map<String, String>>? gestores}) {
    return [
      HorarioDto(id: uuid.v4(), inicio: '13:10', fim: '14:00', gestorReserva: gestores?['tarde']!['reserva']!, gestorServico: gestores?['tarde']!['servico']!, isReserved: false),
      HorarioDto(id: uuid.v4(), inicio: '14:00', fim: '14:50', gestorReserva: gestores?['tarde']!['reserva']!, gestorServico: gestores?['tarde']!['servico']!, isReserved: false),
      HorarioDto(id: uuid.v4(), inicio: '14:50', fim: '15:40', gestorReserva: gestores?['tarde']!['reserva']!, gestorServico: gestores?['tarde']!['servico']!, isReserved: false),
      HorarioDto(id: uuid.v4(), inicio: '15:50', fim: '16:40', gestorReserva: gestores?['tarde']!['reserva']!, gestorServico: gestores?['tarde']!['servico']!, isReserved: false),
      HorarioDto(id: uuid.v4(), inicio: '16:40', fim: '17:30', gestorReserva: gestores?['tarde']!['reserva']!, gestorServico: gestores?['tarde']!['servico']!, isReserved: false),
      HorarioDto(id: uuid.v4(), inicio: '17:30', fim: '18:20', gestorReserva: gestores?['tarde']!['reserva']!, gestorServico: gestores?['tarde']!['servico']!, isReserved: false),
    ];
  }

  static List<HorarioDto> getNoite({Map<String, Map<String, String>>? gestores}) {
    return [
      HorarioDto(id: uuid.v4(), inicio: '18:20', fim: '19:10', gestorReserva: gestores?['noite']!['reserva']!, gestorServico: gestores?['noite']!['servico']!, isReserved: false),
      HorarioDto(id: uuid.v4(), inicio: '19:10', fim: '20:00', gestorReserva: gestores?['noite']!['reserva']!, gestorServico: gestores?['noite']!['servico']!, isReserved: false),
      HorarioDto(id: uuid.v4(), inicio: '20:50', fim: '21:40', gestorReserva: gestores?['noite']!['reserva']!, gestorServico: gestores?['noite']!['servico']!, isReserved: false),
      HorarioDto(id: uuid.v4(), inicio: '21:40', fim: '22:30', gestorReserva: gestores?['noite']!['reserva']!, gestorServico: gestores?['noite']!['servico']!, isReserved: false),
    ];
  }
}
