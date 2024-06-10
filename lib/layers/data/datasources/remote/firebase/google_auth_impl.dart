import 'package:uniespaco/layers/data/datasources/google_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:uniespaco/layers/data/datasources/remote/firebase/precadastro/precadastro_firebase_datasource.dart';
import 'package:uniespaco/layers/data/datasources/remote/firebase/usuario/usuario_firebase_datasource.dart';
import 'package:uniespaco/layers/data/dto/usuario_dto.dart';
import 'package:uniespaco/layers/domain/entities/usuario_entity.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class GoogleAuthImpl implements GoogleAuth {
  FirebaseAuth auth = FirebaseAuth.instance;

  final GoogleSignIn googleSignIn = GoogleSignIn();

  final UsuarioFirebaseDataSource usuarioFirebaseDataSource;

  final PrecadastroFirebaseDataSource precadastroFirebaseDataSource;

  GoogleAuthImpl({required this.usuarioFirebaseDataSource, required this.precadastroFirebaseDataSource});

  @override
  Future<bool> login() async {
    try {
      if (kIsWeb) {
        return _signInWithGoogleWeb().then((value) async {
          var user = value;
          if (user != null) {
            var dominio = _getDominioEmail(user.email);
            if (dominio != 'uesb.edu.br') {
              return false;
            } else {
              await verificarRegistro(
                usuarioInfo: {
                  'id': user.uid,
                  'nome': user.displayName,
                  'email': user.email,
                  'photoUrl': user.photoURL,
                  'telefone': user.phoneNumber ?? '',
                  'espacosFavoritados': [],
                },
              );
              return true;
            }
          }
          logout();
          return false;
        });
      }
      return _signInWithGoogleApp().then((value) async {
        var user = value;
        if (user != null) {
          var dominio = _getDominioEmail(user.email);
          if (dominio != 'uesb.edu.br') {
            return false;
          } else {
            await verificarRegistro(
              usuarioInfo: {
                'id': user.uid,
                'nome': user.displayName,
                'email': user.email,
                'photoUrl': user.photoURL,
                'telefone': user.phoneNumber ?? '',
                'espacosFavoritados': <String>[],
              },
            );
            return true;
          }
        }
        await logout();
        return false;
      });
    } catch (e) {
      throw Exception('Erro Ao logar!');
    }
  }

  @override
  Future<void> logout() async {
    await googleSignIn.signOut();
  }

  Future<User?> _signInWithGoogleApp() async {
    try {
      //Trigger the authentication flow
      final GoogleSignInAccount? googleUser = await googleSignIn.signIn();
      //Obtendo detalhes da requisição
      final GoogleSignInAuthentication googleAuth = await googleUser!.authentication;
      //criando novas credenciais
      final AuthCredential credential = GoogleAuthProvider.credential(accessToken: googleAuth.accessToken, idToken: googleAuth.idToken);
      //Logando o usuario com as credenciais
      final UserCredential userCredential = await auth.signInWithCredential(credential);
      final user = userCredential.user;
      if (user != null) {
        return user;
      }
      return null;
    } catch (e) {
      throw Exception('Erro com o google SignIn');
    }
  }

  Future<User?> _signInWithGoogleWeb() async {
    try {
      GoogleAuthProvider authProvider = GoogleAuthProvider();
      User? user;
      try {
        final UserCredential userCredential = await auth.signInWithPopup(authProvider);

        user = userCredential.user;
      } catch (e) {
        throw Exception(e);
      }

      if (user != null) {
        return user;
      }

      return null;
    } catch (e) {
      throw Exception('Erro com o google SignIn Web');
    }
  }

  String _getDominioEmail(String? email) {
    final index = email!.indexOf('@');
    if (index == -1) {
      return '';
    }
    return email.substring(index + 1);
  }

  @override
  Future<void> verificarRegistro({required Map<String, dynamic> usuarioInfo}) async {
    try {
      // Verifica se o usuario ja está cadastrado
      var responseItemById = await usuarioFirebaseDataSource.getUsuarioById(id: usuarioInfo['id']);
      if (responseItemById == null) {
        // Caso seja nulo, vai criar o usuario
        // Busca email em lista de precadastro
        var responsePreCadastro = await precadastroFirebaseDataSource.getPrecadastroByEmail(email: usuarioInfo['email']);
        if (responsePreCadastro.isEmpty) {
          usuarioInfo.putIfAbsent('tipoUsuario', () => 'comum');
          final usuario = UsuarioDto.fromMap(usuarioInfo);
          usuarioFirebaseDataSource.createUsuario(usuarioEntity: usuario.toEntity());
        }
        var tipoUsuario = responsePreCadastro.firstWhere((test) => test.containsKey(usuarioInfo['email']));
        usuarioInfo['tipoUsuario'] = tipoUsuario.entries.first.value;
        final usuario = UsuarioDto.fromMap(usuarioInfo);
        usuarioFirebaseDataSource.createUsuario(usuarioEntity: usuario.toEntity());
      }
    } catch (e) {
      throw Exception('Erro ao verificar');
    }
  }

  @override
  Future<UsuarioEntity> getUsuario() async {
    try {
      final User? user = auth.currentUser;
      final responseUsuario = await usuarioFirebaseDataSource.getUsuarioById(id: user!.uid);
      return responseUsuario!;
    } catch (e) {
      throw Exception('Erro ao buscar usuario');
    }
  }
}
