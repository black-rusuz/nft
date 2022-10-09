import 'enums.dart';

class UserModel{
  final int teamId;
  final String name;
  final Role role;
  final int experience;
  final String apiToken;

  const UserModel({
    required this.teamId,
    required this.name,
    required this.role,
    required this.experience,
    required this.apiToken,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
        teamId: json['team_id'],
        name: json['name'],
        role: (json['role'] as String).toRole,
        experience: json['experience'],
        apiToken: json['api_token'],
    );
  }
}