class TeamModel {
  final String name;
  final String description;
  final int experience;

  const TeamModel({
    required this.name,
    required this.description,
    required this.experience,
  });

  factory TeamModel.fromJson(Map<String, dynamic> json) {
    return TeamModel(
        name: json['name'],
        description: json['description'],
        experience: json['experience'],
    );
  }
}