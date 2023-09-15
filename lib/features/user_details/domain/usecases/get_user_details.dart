import 'package:clean_architecture_challenge/core/dependency_injection/service_locator.dart';
import 'package:clean_architecture_challenge/features/user_details/domain/entities/user_entity.dart';
import 'package:clean_architecture_challenge/features/user_details/domain/repositories/user_repository.dart';

class GetUserDetailsUsecase {
  Future<UserEntity?> getUserDetails() async {
    return serviceLocator<UserRepository>().getUserDetails();
  }
}
