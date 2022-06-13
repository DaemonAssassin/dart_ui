import 'package:flutter/material.dart';

class AppBarTrailing extends StatelessWidget {
  const AppBarTrailing({Key? key}) : super(key: key);

  final String _leadingAppbarImg =
      r'lib\Task Manager Mobile App\res\images\menu.png';

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        width: 45.0,
        height: 45.0,
        alignment: Alignment.center,
        child: Image.asset(
          _leadingAppbarImg,
          width: 25.0,
          height: 25.0,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
