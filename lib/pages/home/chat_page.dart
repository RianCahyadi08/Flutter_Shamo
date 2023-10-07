import 'package:flutter/material.dart';
import 'package:shamo/theme/theme.dart';
import 'package:shamo/widgets/chat_tile.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  Widget header() {
    return AppBar(
      backgroundColor: backgroundColor1,
      automaticallyImplyLeading: false,
      centerTitle: true,
      title: Text(
        'Message Support',
        style: primaryTextStyle.copyWith(
          fontSize: 18,
          fontWeight: medium,
          letterSpacing: 0.18,
        ),
      ),
      elevation: 0,
    );
  }

  Widget content() {
    return Expanded(
      child: Container(
        width: double.infinity,
        color: backgroundColor3,
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          children: const [
            ChatTile(),
          ],
        ),
      ),
    );
  }

  Widget emptyChat() {
    return Expanded(
      child: Center(
        child: Container(
          clipBehavior: Clip.none,
          color: backgroundColor3,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/icon_headseat.png',
                width: 80,
                height: 80,
              ),
              const SizedBox(height: 20),
              Text(
                'Opss no message yet?',
                style: primaryTextStyle.copyWith(
                  fontSize: 16,
                  letterSpacing: 0.08,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'You have never done a transaction',
                style: secondaryTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: reguler,
                  letterSpacing: 0.07,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 44,
                child: TextButton(
                  onPressed: () => (),
                  style: TextButton.styleFrom(
                    backgroundColor: primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        12,
                      ),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 10,
                    ),
                  ),
                  child: Text(
                    'Explore Store',
                    style: primaryTextStyle.copyWith(
                      fontSize: 16,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        header(),
        // emptyChat(),
        content()
      ],
    );
  }
}
