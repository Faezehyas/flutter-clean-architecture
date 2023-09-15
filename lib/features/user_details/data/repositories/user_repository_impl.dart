import 'package:clean_architecture_challenge/core/dependency_injection/service_locator.dart';
import 'package:clean_architecture_challenge/features/user_details/data/source/remote/user_remote_data_source.dart';
import 'package:clean_architecture_challenge/features/user_details/domain/entities/user_entity.dart';
import 'package:clean_architecture_challenge/features/user_details/domain/repositories/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  @override
  Future<UserEntity?> getUserDetails() async {
    return serviceLocator<UserRemoteDataSource>().getUserDetails();
  }
}
