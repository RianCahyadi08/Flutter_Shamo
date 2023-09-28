import 'package:flutter/material.dart';
import 'package:shamo/theme/theme.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Chat page',
        style: primaryTextStyle,
      ),
    );
  }
}
