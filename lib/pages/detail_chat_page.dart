import 'package:flutter/material.dart';
import 'package:shamo/theme/theme.dart';

class DetailChatPage extends StatelessWidget {
  const DetailChatPage({super.key});

  Widget productReview() {
    return Container(
      width: 225,
      height: 70,
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: backgroundColor5,
        borderRadius: BorderRadius.circular(
          12,
        ),
        border: Border.all(
          color: primaryColor,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              'assets/product_1.png',
              width: 54,
              height: 54,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Court Vision',
                  overflow: TextOverflow.ellipsis,
                  style: primaryTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: reguler,
                    letterSpacing: 0.14,
                  ),
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  '\$57,15',
                  style: priceTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: medium,
                    letterSpacing: 0.14,
                  ),
                ),
              ],
            ),
          ),
          Image.asset(
            'assets/btn_close.png',
            width: 22,
          )
        ],
      ),
    );
  }

  Widget chatInput() {
    return Container(
      margin: const EdgeInsets.all(20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          productReview(),
          Row(
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
