import 'package:flutter/material.dart';
import 'package:shamo/theme/theme.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Profile page',
        style: primaryTextStyle,
      ),
    );
  }
}
