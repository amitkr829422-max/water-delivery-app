import '../entities/user_entity.dart';

abstract class AuthRepository {
  Future<UserEntity?> login(String email, String password);

  Future<UserEntity?> signup({
    required String name,
    required String email,
    required String password,
    required String role,
  });

  Future<void> logout();

  Future<UserEntity?> currentUser();
}
