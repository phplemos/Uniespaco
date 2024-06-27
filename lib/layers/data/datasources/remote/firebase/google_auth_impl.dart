import 'package:get_it/get_it.dart';
import 'package:uniespaco/core/core.dart';
import 'package:uniespaco/layers/data/datasources/google_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:uniespaco/layers/data/datasources/remote/firebase/precadastro/precadastro_firebase_datasource.dart';
import 'package:uniespaco/layers/data/datasources/remote/firebase/usuario/usuario_firebase_datasource.dart';
import 'package:uniespaco/layers/data/dto/usuario_dto.dart';
import 'package:uniespaco/layers/domain/entities/precadastro_usuario_entity.dart';
import 'package:uniespaco/layers/domain/entities/usuario_entity.dart';
import 'package:flutter/foundation.dart' show kIsWeb, listEquals;

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
              await logout();
              return false;
            } else {
              return await isRegistered(
                usuarioInfo: {
                  'id': user.uid,
                  'nome': user.displayName,
                  'email': user.email,
                  'photoUrl': user.photoURL,
                  'telefone': user.phoneNumber ?? '',
                  'espacosFavoritados': [],
                },
              );
            }
          }
          await logout();
          return false;
        });
      }
      return _signInWithGoogleApp().then((value) async {
        var user = value;
        if (user != null) {
          var dominio = _getDominioEmail(user.email);
          if (dominio != 'uesb.edu.br') {
            await logout();
            return false;
          } else {
            return await isRegistered(
              usuarioInfo: {
                'id': user.uid,
                'nome': user.displayName,
                'email': user.email,
                'photoUrl': user.photoURL,
                'telefone': user.phoneNumber ?? '',
                'espacosFavoritados': <String>[],
              },
            );
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
    await auth.signOut();
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
  Future<bool> isRegistered({required Map<String, dynamic> usuarioInfo}) async {
    try {
      final Core core = GetIt.instance.get<Core>();
      // Verifica se o usuario ja está cadastrado
      var responseUsuarioById = await usuarioFirebaseDataSource.getUsuarioById(id: usuarioInfo['id']);
      // Busca email em lista de precadastro
      PreCadastroUsuarioEntity? responsePreCadastro = await precadastroFirebaseDataSource.getPrecadastroByEmail(email: usuarioInfo['email']);
      // Caso seja nulo, vai criar o usuario
      if (responseUsuarioById == null) {
        // Caso não esteja no precadastro, adiciona a lista e adiciona uma role comum
        if (responsePreCadastro == null) {
          List<String> userRoles = [UserRole.comum.name];
          // Adiciona permissão ao usuario, Converte para Map persiste no banco o usuario
          usuarioInfo.putIfAbsent('userRole', () => userRoles);
          final usuario = UsuarioDto.fromMap(usuarioInfo).toEntity();
          var response = await usuarioFirebaseDataSource.createUsuario(usuarioEntity: usuario);
          await core.setUserData();
          return response;
        } else {
          usuarioInfo.putIfAbsent('userRole', () => responsePreCadastro.userRole.map((userRole) => userRole.name).toList());
          final usuario = UsuarioDto.fromMap(usuarioInfo).toEntity();
          var response = await usuarioFirebaseDataSource.createUsuario(usuarioEntity: usuario);
          await core.setUserData();
          return response;
        }
      } else {
        // Caso usuario seja cadastrado, verifica se há um pre cadastro contendo uma nova permissao
        if (responsePreCadastro != null) {
          // Verifica se o pre cadastro tem mais roles que o usuario, se sim, identifica qual é e adiciona
          if (responsePreCadastro.userRole.length > responseUsuarioById.userRole.length) {
            await Future.forEach(responsePreCadastro.userRole, (userRole) {
              if (!responseUsuarioById.userRole.contains(userRole)) {
                responseUsuarioById.userRole.add(userRole);
              }
            });
            var response = await usuarioFirebaseDataSource.createUsuario(usuarioEntity: responseUsuarioById);
            await core.setUserData();
            return response;
          } else {
            await Future.forEach(responseUsuarioById.userRole, (userRole) {
              if (!responsePreCadastro.userRole.contains(userRole)) {
                responsePreCadastro.userRole.add(userRole);
              }
            });
            await precadastroFirebaseDataSource.createPrecadastro(precadastro: responsePreCadastro);
            var response = await usuarioFirebaseDataSource.createUsuario(usuarioEntity: responseUsuarioById);
            await core.setUserData();
            return response;
          }
        } else {
          await core.setUserData();
          return true;
        }
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
