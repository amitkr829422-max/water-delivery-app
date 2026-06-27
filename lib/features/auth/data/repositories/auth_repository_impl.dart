import '../../domain/entities/user_entity.dart';
import '../../domain/repositories/auth_repository.dart';
import '../datasources/auth_remote_datasource.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remote;

  AuthRepositoryImpl(this.remote);

  @override
  Future<UserEntity?> login(String email, String password) async {
    final result = await remote.signIn(
      email: email,
      password: password,
    );

    final user = result.user;

    if (user == null) return null;

    return UserEntity(
      uid: user.uid,
      name: user.displayName ?? "",
      email: user.email ?? "",
      role: "customer",
      approved: true,
    );
  }

  @override
  Future<UserEntity?> signup({
    required String name,
    required String email,
    required String password,
    required String role,
  }) async {
    final result = await remote.signUp(
      email: email,
      password: password,
    );

    final user = result.user;

    if (user == null) return null;

    await user.updateDisplayName(name);

    return UserEntity(
      uid: user.uid,
      name: name,
      email: email,
      role: role,
      approved: role == "customer",
    );
  }

  @override
  Future<void> logout() async {
    await remote.signOut();
  }

  @override
  Future<UserEntity?> currentUser() async {
    final user = remote.currentUser;

    if (user == null) return null;

    return UserEntity(
      uid: user.uid,
      name: user.displayName ?? "",
      email: user.email ?? "",
      role: "customer",
      approved: true,
    );
  }
}
