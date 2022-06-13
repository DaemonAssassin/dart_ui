import 'package:flutter/material.dart';
import 'bottom_nav_bar.dart';
import 'appbar_trailing_widget.dart';
import 'appbar_avatar.dart';
import './res/colors.dart';
import 'body.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.purple,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: const AppBarTrailing(),
        actions: const [AppBarAvatar()],
      ),
      body: const Body(),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
