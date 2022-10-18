import 'package:flutter/material.dart';

import '../models/user_model.dart';

class UserCard extends StatelessWidget {
  final User user;
  final VoidCallback? onPressed;

  const UserCard({
    Key? key,
    required this.user,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: onPressed,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                user.name,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(height: 8.0),
              Row(
                children: [
                  const Icon(Icons.email_outlined),
                  const SizedBox(width: 8.0),
                  Text(user.email),
                ],
              ),
              const SizedBox(height: 8.0),
              Row(
                children: [
                  const Icon(Icons.phone),
                  const SizedBox(width: 8.0),
                  Text(user.phone),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
