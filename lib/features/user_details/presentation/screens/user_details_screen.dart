import 'package:clean_architecture_challenge/features/user_details/blocs/user_cubit.dart';
import 'package:clean_architecture_challenge/features/user_details/blocs/user_state.dart';
import 'package:clean_architecture_challenge/features/user_details/presentation/widgets/user_details_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserDetailsScreen extends StatelessWidget {
  const UserDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Details'),
      ),
      body: BlocProvider(
        create: (context) => UserCubit()..getUser(),
        child: BlocBuilder<UserCubit, UserState>(
          builder: (context, state) {
            if (state is UserDetailsLoading) {
              return const CircularProgressIndicator();
            } else if (state is UserDetailsLoaded) {
              return UserDetailsWidget(
                user: state.user,
              );
            } else if (state is UserDetailsError) {
              return Text('Error: ${state.message}');
            }
            return Container();
          },
        ),
      ),
    );
  }
}
