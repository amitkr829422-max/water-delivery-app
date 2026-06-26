import 'package:flutter_riverpod/flutter_riverpod.dart';

/// AUTH STATE
class AuthState {
  final bool isLoading;
  final bool isLoggedIn;
  final String? role;

  AuthState({
    this.isLoading = false,
    this.isLoggedIn = false,
    this.role,
  });

  AuthState copyWith({
    bool? isLoading,
    bool? isLoggedIn,
    String? role,
  }) {
    return AuthState(
      isLoading: isLoading ?? this.isLoading,
      isLoggedIn: isLoggedIn ?? this.isLoggedIn,
      role: role ?? this.role,
    );
  }
}

/// AUTH NOTIFIER
class AuthNotifier extends StateNotifier<AuthState> {
  AuthNotifier() : super(AuthState());

  /// LOGIN (TEMP LOGIC - Firebase later)
  Future<void> login(String email, String password) async {
    state = state.copyWith(isLoading: true);

    await Future.delayed(const Duration(seconds: 2));

    state = state.copyWith(
      isLoading: false,
      isLoggedIn: true,
      role: "customer",
    );
  }

  /// LOGOUT
  void logout() {
    state = AuthState();
  }

  /// SET ROLE
  void setRole(String role) {
    state = state.copyWith(role: role);
  }
}

/// PROVIDER
final authProvider =
    StateNotifierProvider<AuthNotifier, AuthState>(
  (ref) => AuthNotifier(),
);
