import 'package:clean_architecture_challenge/core/utils/request.dart';
import 'package:clean_architecture_challenge/features/user_details/data/repositories/user_repository_impl.dart';
import 'package:clean_architecture_challenge/features/user_details/data/source/remote/user_remote_data_source.dart';
import 'package:clean_architecture_challenge/features/user_details/domain/repositories/user_repository.dart';
import 'package:clean_architecture_challenge/features/user_details/domain/usecases/get_user_details.dart';
import 'package:get_it/get_it.dart';

final serviceLocator = GetIt.instance;
Future<void> setUpServiceLocator() async {
  serviceLocator
      .registerFactory<GetUserDetailsUsecase>(() => GetUserDetailsUsecase());
  serviceLocator.registerFactory<UserRepository>(() => UserRepositoryImpl());
  serviceLocator
      .registerFactory<UserRemoteDataSource>(() => UserRemoteDataSourceImpl());
  serviceLocator.registerSingleton<Request>(Request());
}
