import 'package:equatable/equatable.dart';

class TeamModel extends Equatable {
  final int id;
  final String name;
  final String description;
  final int experience;

  const TeamModel({
    required this.id,
    required this.name,
    required this.description,
    required this.experience,
  });

  factory TeamModel.fromJson(Map<String, dynamic> json) {
    return TeamModel(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      experience: json['experience'],
    );
  }

  @override
  List<Object?> get props => [
        id,
        name,
        description,
        experience,
      ];
}
