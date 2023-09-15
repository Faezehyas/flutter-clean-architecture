import 'package:clean_architecture_challenge/core/dependency_injection/service_locator.dart';
import 'package:clean_architecture_challenge/features/user_details/domain/usecases/get_user_details.dart';
import 'package:clean_architecture_challenge/features/user_details/blocs/user_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit() : super(UserDetailsInitial()) {
    getUser();
  }

  void getUser() async {
    emit(UserDetailsLoading());
    try {
      final result =
          await serviceLocator<GetUserDetailsUsecase>().getUserDetails();
      if (result != null) {
        emit(UserDetailsLoaded(result));
      } else {
        emit(UserDetailsError(message: 'empty'));
      }
    } catch (e) {
      emit(UserDetailsError(message: e.toString()));
    }
  }
}
