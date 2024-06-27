import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:uniespaco/layers/data/datasources/google_auth.dart';
import 'package:uniespaco/layers/data/datasources/remote/firebase/usuario/usuario_firebase_datasource.dart';
import 'package:uniespaco/layers/domain/entities/usuario_entity.dart';
import 'package:uniespaco/layers/shared/espaco_provider.dart';

class Core {
  final UsuarioFirebaseDataSource usuarioFirebaseDataSource;
  final GoogleAuth googleAuth;

  Core({required this.googleAuth, required this.usuarioFirebaseDataSource});

  final ValueNotifier<bool> isCompleted = ValueNotifier(false);

  static UsuarioEntity? _user;

  UsuarioEntity? get user => _user;

  Future<void> setUserData() async {
    String idUsuario = await googleAuth.getUsuario().then((usuario) => usuario.id);
    _user = await usuarioFirebaseDataSource.getUsuarioById(id: idUsuario);

    if (_user != null) {
      isCompleted.value = true;
    }
  }
}
