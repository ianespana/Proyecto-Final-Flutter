import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          CircleAvatar(
            backgroundImage: NetworkImage(
                'https://img.freepik.com/free-vector/businessman-character-avatar-isolated_24877-60111.jpg'),
          ),
        ],
      ),
    );
  }
}
