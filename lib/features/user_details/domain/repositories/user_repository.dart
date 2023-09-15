import 'package:clean_architecture_challenge/features/user_details/domain/entities/user_entity.dart';

abstract class UserRepository {
  Future<UserEntity?> getUserDetails();
}
