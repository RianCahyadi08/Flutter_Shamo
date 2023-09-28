import 'package:flutter/material.dart';
import 'package:shamo/theme/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Home page',
        style: primaryTextStyle,
      ),
    );
  }
}
