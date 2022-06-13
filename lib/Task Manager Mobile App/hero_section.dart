import 'package:flutter/material.dart';
import './res/colors.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({Key? key}) : super(key: key);

  final String _profileImageUrl =
      'https://images.unsplash.com/photo-1607990281513-2c110a25bd8c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=934&q=80';

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    'Hi Ghulam!',
                    style: TextStyle(
                      fontSize: 32.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ),
                SizedBox(height: 6.0),
                Text(
                  '6 Tasks are pending',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: MyColors.onPurple,
                    fontFamily: 'Poppins',
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                color: MyColors.blueishPurple,
                borderRadius: BorderRadius.circular(24.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: double.infinity,
                            margin: const EdgeInsets.only(left: 16.0),
                            child: const Text(
                              'Mobile App Design',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontFamily: 'Poppins',
                              ),
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            margin: const EdgeInsets.only(left: 16.0),
                            child: const Text(
                              'Mike and Anita',
                              style: TextStyle(
                                fontSize: 12.0,
                                color: MyColors.onPurple,
                                fontFamily: 'Poppins',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Stack(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(2.0),
                                margin: const EdgeInsets.only(
                                    left: 16.0, right: 32),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(1000.0),
                                ),
                                child: CircleAvatar(
                                  radius: 18.0,
                                  backgroundColor: Colors.transparent,
                                  foregroundImage:
                                      NetworkImage(_profileImageUrl),
                                ),
                              ),
                              Positioned(
                                left: 32.0,
                                child: Container(
                                  padding: const EdgeInsets.all(2.0),
                                  margin: const EdgeInsets.only(left: 16.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(1000.0),
                                  ),
                                  child: CircleAvatar(
                                    radius: 18.0,
                                    backgroundColor: Colors.transparent,
                                    foregroundImage:
                                        NetworkImage(_profileImageUrl),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Padding(
                            padding: EdgeInsets.only(right: 16.0),
                            child: Text(
                              'Now',
                              style: TextStyle(
                                fontSize: 12.0,
                                color: MyColors.onPurple,
                                fontFamily: 'Poppins',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
