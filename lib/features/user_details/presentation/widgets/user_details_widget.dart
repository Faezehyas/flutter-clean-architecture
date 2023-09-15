import 'package:clean_architecture_challenge/features/user_details/domain/entities/user_entity.dart';
import 'package:flutter/material.dart';

class UserDetailsWidget extends StatelessWidget {
  final UserEntity? user;

  const UserDetailsWidget({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, top: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '${user?.name ?? ''} ${user?.username ?? ''}',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(height: 8),
          Text(user?.email ?? ''),
        ],
      ),
    );
  }
}
