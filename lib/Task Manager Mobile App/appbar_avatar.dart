import 'package:flutter/material.dart';

class AppBarAvatar extends StatelessWidget {
  const AppBarAvatar({Key? key}) : super(key: key);

  final String _profileImageUrl =
      'https://images.unsplash.com/photo-1607990281513-2c110a25bd8c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=934&q=80';

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: kToolbarHeight,
      child: Align(
        alignment: Alignment.center,
        child: Container(
          padding: const EdgeInsets.all(2.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(1000.0),
          ),
          child: CircleAvatar(
            radius: 20.0,
            backgroundColor: Colors.transparent,
            foregroundImage: NetworkImage(_profileImageUrl),
          ),
        ),
      ),
    );
  }
}
