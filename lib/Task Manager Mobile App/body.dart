import 'package:flutter/material.dart';
import 'bottom_box.dart';
import './res/colors.dart';
import 'hero_section.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
      child: Column(
        children: [
          const HeroSection(),
          const SizedBox(height: 16.0),
          buildCategory(),
          const SizedBox(height: 16.0),
          const BottomBox(),
          const SizedBox(height: 16.0),
        ],
      ),
    );
  }

  Expanded buildCategory() {
    return Expanded(
      flex: 1,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Expanded(
            child: Text(
              'Monthly Review',
              style: TextStyle(
                fontSize: 24.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          CircleAvatar(
            backgroundColor: MyColors.sky,
            radius: 20.0,
            child: Icon(
              Icons.reviews_outlined,
              color: Colors.white,
              size: 18.0,
            ),
          ),
        ],
      ),
    );
  }
}
