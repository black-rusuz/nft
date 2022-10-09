import 'package:equatable/equatable.dart';

class UserModel extends Equatable {
  final String name;
  final String position;
  final String imageUrl;

  const UserModel({
    required this.name,
    required this.position,
    required this.imageUrl,
  });

  @override
  List<Object?> get props => [
        name,
        position,
        imageUrl,
      ];
}
