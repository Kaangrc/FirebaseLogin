// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:auth_app/features/auth/repository/auth_repository.dart';
import 'package:auth_app/models/user_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authControllerProvider = Provider(
  (ref) => AuthController(
    authRepository: ref.watch(authRepositoryProvider),
  ),
);

class AuthController {
  final AuthRepository authRepository;
  AuthController({
    required this.authRepository,
  });

  Future<void> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    return authRepository.signInWithEmailAndPassword(
        email: email, password: password);
  }

  Future<void> signUpWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    return authRepository.signUpWithEmailAndPassword(
        email: email, password: password);
  }

  Future<void> signOut() async {
    return authRepository.signOut();
  }

  Future<void> storeUserInfoFirebase(UserModel userModel) async {
    return authRepository.storeUserInfoFirebase(userModel);
  }
}
