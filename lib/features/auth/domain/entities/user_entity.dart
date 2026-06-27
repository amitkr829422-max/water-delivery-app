class UserEntity {
  final String uid;
  final String name;
  final String email;
  final String role;
  final bool approved;

  const UserEntity({
    required this.uid,
    required this.name,
    required this.email,
    required this.role,
    required this.approved,
  });
}
