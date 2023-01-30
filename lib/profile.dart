import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  final String userName;
  final String profileImage;
  final double balance;

  const Profile(
      {super.key,
        required this.userName,
        required this.profileImage,
        required this.balance});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(profileImage),
          ),
        ],
      ),
    );
  }
}
