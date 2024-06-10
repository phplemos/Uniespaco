import 'package:flutter/material.dart';
import 'package:uniespaco/layers/data/dto/espaco_dto.dart';
import 'package:uniespaco/layers/domain/entities/espaco_entity.dart';
import 'package:uniespaco/layers/domain/entities/usuario_entity.dart';
import 'package:uniespaco/layers/domain/usecases/cadastrar_espaco_usecase/cadastrar_espaco_usecase.dart';
import 'package:uniespaco/layers/domain/usecases/listar_professores_cadastrados_usecase/listar_professores_cadastrados_usecase.dart';
import 'package:uniespaco/layers/domain/usecases/listar_setores_cadastrados_usecase/listar_setores_cadastrados_usecase.dart';
import 'package:uniespaco/layers/ui/presenters/cadastro_espaco/forms/formulario_cadastro_espaco_widget.dart';

abstract class CadastroEspacoController extends ChangeNotifier {
  TextEditingController pavilhao = TextEditingController();

  TextEditingController andar = TextEditingController();

  TextEditingController numero = TextEditingController();

  TextEditingController capacidadePessoas = TextEditingController();

  bool isAcessivel = false;

  String tipoEspaco = 'Sala';

  List<CheckBoxModel> listaEquipamentos = [];

  init();

  Future<void> save({required Map<String, dynamic> map});

  Future<List<UsuarioEntity?>> getGestores();

  String? validatorText(String? text);

  String? validatorNumber(String? text);
}

class CadastroEspacoControllerImpl extends CadastroEspacoController {
  final CadastrarEspacoUseCase cadastrarEspacoUseCase;
  final ListarSetoresCadastradosUseCase listarSetoresCadastradosUseCase;
  final ListarProfessoresCadastradosUseCase listarProfessoresCadastradosUseCase;

  CadastroEspacoControllerImpl({
    required this.cadastrarEspacoUseCase,
    required this.listarSetoresCadastradosUseCase,
    required this.listarProfessoresCadastradosUseCase,
  }) {
    init();
  }

  @override
  init() {
    listaEquipamentos = [
      CheckBoxModel(texto: "Mesas e cadeiras"),
      CheckBoxModel(texto: "Quadro branco ou lousa"),
      CheckBoxModel(texto: "Projetor"),
      CheckBoxModel(texto: "Armários"),
      CheckBoxModel(texto: "Armazenamento para materiais"),
      CheckBoxModel(texto: "Papelaria"),
      CheckBoxModel(texto: "Equipamentos para tecnologia educacional"),
      CheckBoxModel(texto: "Equipamentos de segurança"),
      CheckBoxModel(texto: "Computadores"),
      CheckBoxModel(texto: "Laptops"),
      CheckBoxModel(texto: "Tablets"),
      CheckBoxModel(texto: "Projetores"),
      CheckBoxModel(texto: "Softwares educacionais"),
      CheckBoxModel(texto: "Instrumentos musicais"),
      CheckBoxModel(texto: "Partituras"),
      CheckBoxModel(texto: "Equipamentos de gravação"),
      CheckBoxModel(texto: "Materiais de desenho"),
      CheckBoxModel(texto: "Pintura"),
      CheckBoxModel(texto: "Escultura"),
      CheckBoxModel(texto: "Materiais de laboratório"),
      CheckBoxModel(texto: "Equipamentos de segurança"),
      CheckBoxModel(texto: "Equipamentos esportivos"),
      CheckBoxModel(texto: "Uniformes"),
    ];

  }

  @override
  Future<void> save({required Map<String, dynamic> map}) async {
    map.putIfAbsent('agenda', () => {});
    final EspacoEntity espaco = EspacoDto.fromMap(map).toEntity();
    final response = await cadastrarEspacoUseCase(espacoEntity: espaco);
    return response.fold((error) => false, (success) => true);
  }

  @override
  Future<List<UsuarioEntity?>> getGestores() async {
    List<UsuarioEntity?> gestores = [];
    var responseSetores = await listarSetoresCadastradosUseCase();
    var responseProfessores = await listarProfessoresCadastradosUseCase();
    responseSetores.fold((error) => [], (success) => gestores.addAll(success));
    responseProfessores.fold((error) => [], (success) => gestores.addAll(success));
    return gestores;
  }

  @override
  String? validatorText(String? text) {
    if (text?.isEmpty ?? true) {
      return 'Campo Obrigatório';
    }
    final exp = RegExp(r"^[a-zA-Z0-9 ]+$");
    if (!exp.hasMatch(text!)) {
      return 'Caractere invalido!';
    }
    return null;
  }

  @override
  String? validatorNumber(String? text) {
    if (text?.isEmpty ?? true) {
      return 'Campo Obrigatório';
    }
    final exp = RegExp(r"^(?=.*\d)\d{1,}$");
    if (!exp.hasMatch(text!)) {
      return 'Caractere invalido!';
    }
    return null;
  }
}
