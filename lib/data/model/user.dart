import 'package:equatable/equatable.dart';

import 'enums.dart';

class UserModel extends Equatable {
  final int teamId;
  final String name;
  final Role role;
  final int experience;
  final String apiToken;
  final String? position;
  final String? imageUrl;

  const UserModel({
    required this.teamId,
    required this.name,
    required this.role,
    required this.experience,
    required this.apiToken,
    required this.position,
    required this.imageUrl,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      teamId: json['team_id'],
      name: json['name'],
      role: (json['role'] as String).toRole,
      experience: json['experience'],
      apiToken: json['api_token'],
      position: json['position'],
      imageUrl: json['image_url'],
    );
  }

  @override
  List<Object?> get props => [
        teamId,
        name,
        role,
        experience,
        apiToken,
        position,
        imageUrl,
      ];
}
