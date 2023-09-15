import 'package:clean_architecture_challenge/features/user_details/domain/entities/user_entity.dart';
import 'package:equatable/equatable.dart';

abstract class UserState extends Equatable {}

class UserDetailsInitial extends UserState {
  @override
  List<Object> get props => [];
}

class UserDetailsLoading extends UserState {
  @override
  List<Object> get props => [];
}

class UserDetailsLoaded extends UserState {
  final UserEntity? user;

  UserDetailsLoaded(this.user);

  @override
  List<Object?> get props => [user];
}

class UserDetailsError extends UserState {
  final String message;

  UserDetailsError({required this.message});

  @override
  List<Object> get props => [message];
}
