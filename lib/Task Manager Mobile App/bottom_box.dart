import 'package:flutter/material.dart';
import './res/colors.dart';

class BottomBox extends StatelessWidget {
  const BottomBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Expanded(
      flex: 4,
      child: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                buildBox(
                  number: '22',
                  status: 'Done',
                  size: mediaQuery.size,
                  flex: 6,
                ),
                const SizedBox(height: 16.0),
                buildBox(
                  number: '10',
                  status: 'Ongoing',
                  size: mediaQuery.size,
                  flex: 4,
                ),
              ],
            ),
          ),
          const SizedBox(width: 16.0),
          Expanded(
            child: Column(
              children: [
                buildBox(
                  number: '7',
                  status: 'In Progress',
                  size: mediaQuery.size,
                  flex: 4,
                ),
                const SizedBox(height: 16.0),
                buildBox(
                  number: '12',
                  status: 'Waiting For Review',
                  size: mediaQuery.size,
                  flex: 6,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Expanded buildBox({
    required String number,
    required String status,
    required Size size,
    required int flex,
  }) {
    final wholeHeight = size.height - kToolbarHeight;
    return Expanded(
      flex: flex,
      child: Container(
        decoration: BoxDecoration(
          color: MyColors.blueishPurple,
          borderRadius: BorderRadius.circular(24.0),
        ),
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildText(
              text: number,
              fontSize: wholeHeight * 0.035,
            ),
            const SizedBox(height: 4.0),
            buildText(
              text: status,
              fontSize: wholeHeight * 0.02,
              color: MyColors.onPurple,
              fontWeight: FontWeight.normal,
            ),
          ],
        ),
      ),
    );
  }

  Text buildText({
    required String text,
    required double fontSize,
    Color color = Colors.white,
    FontWeight fontWeight = FontWeight.bold,
  }) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
        fontFamily: 'Poppins',
      ),
    );
  }
}
