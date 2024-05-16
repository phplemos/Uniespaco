import 'package:flutter/cupertino.dart';

abstract class ListarReservasController extends ChangeNotifier {
  List<String> turnos = ['manha', 'tarde', 'noite'];

  String turnoSelecionado = 'Selecionar';

}

class ListarReservasControllerImpl extends ListarReservasController {}
