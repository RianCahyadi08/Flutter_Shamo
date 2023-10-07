import 'package:flutter/material.dart';
import 'package:shamo/theme/theme.dart';

class DetailChatPage extends StatelessWidget {
  const DetailChatPage({super.key});

  Widget chatInput() {
    return Container(
      margin: const EdgeInsets.all(20),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 45,
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 12,
              ),
              decoration: BoxDecoration(
                color: backgroundColor4,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: TextFormField(
                  decoration: InputDecoration.collapsed(
                    hintText: 'Reply message . . .',
                    hintStyle: subtitleTextStyle.copyWith(fontSize: 14),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Image.asset(
            'assets/btn_send.png',
            width: 45,
            height: 45,
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor3,
      appBar: const Header(),
      bottomNavigationBar: chatInput(),
    );
  }
}

class Header extends StatelessWidget implements PreferredSizeWidget {
  const Header({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(80);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: preferredSize,
      child: AppBar(
        backgroundColor: backgroundColor1,
        centerTitle: false,
        toolbarHeight: 84,
        leadingWidth: 30,
        title: Row(
          children: [
            Image.asset(
              'assets/image_shop_logo_online.png',
              width: 50,
              height: 50,
            ),
            const SizedBox(
              width: 12,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Shoe Store',
                  style: primaryTextStyle.copyWith(
                    fontSize: 14,
                  ),
                ),
                Text(
                  'Online',
                  style: secondaryTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: reguler,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
