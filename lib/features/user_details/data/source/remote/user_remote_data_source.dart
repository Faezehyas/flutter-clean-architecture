import 'dart:developer';
import 'package:clean_architecture_challenge/core/dependency_injection/service_locator.dart';
import 'package:clean_architecture_challenge/core/utils/request.dart';
import 'package:clean_architecture_challenge/features/user_details/data/models/user_model.dart';

abstract class UserRemoteDataSource {
  Future<UserModel?> getUserDetails();
}

class UserRemoteDataSourceImpl extends UserRemoteDataSource {
  @override
  Future<UserModel?> getUserDetails() async {
    try {
      final Request request = serviceLocator<Request>();
      final response = await request.get('/users');
      if (response.statusCode == 200) {
        List<UserModel> productList = [];
        final productListMap = response.data;
        for (var product in productListMap) {
          productList.add(UserModel.fromJson(product));
        }
        return productList.first;
      }
      return null;
    } catch (error) {
      log('UserRemoteDataSourceImpl error:$error');
      return null;
    }
  }
}
