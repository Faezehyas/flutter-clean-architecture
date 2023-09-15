import 'package:clean_architecture_challenge/features/user_details/domain/entities/user_entity.dart';

class UserModel extends UserEntity {
  UserModel({
    required int? id,
    required String? name,
    required String? username,
    required String? email,
  }) : super(
          id: id,
          name: name,
          username: username,
          email: email,
        );

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        id: json['id'] as int?,
        name: json['name'] as String?,
        username: json['username'] as String?,
        email: json['email'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'username': username,
        'email': email,
      };

  UserEntity toEntity() {
    return UserEntity(
      id: id,
      name: name,
      username: username,
      email: email,
    );
  }
}
