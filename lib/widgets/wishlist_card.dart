import 'package:flutter/material.dart';
import 'package:shamo/theme/theme.dart';

class WishlistCard extends StatelessWidget {
  const WishlistCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 84,
      margin: const EdgeInsets.only(
        top: 20,
        // left: 30,
        // right: 30,
      ),
      padding: const EdgeInsets.only(
        top: 10,
        left: 12,
        bottom: 14,
        right: 20,
      ),
      decoration: BoxDecoration(
        color: backgroundColor4,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              'assets/product_2.png',
              width: 60,
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Terrex Urban Low',
                  style: primaryTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: semiBold,
                    letterSpacing: 0.14,
                  ),
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  '\$143,98',
                  style: priceTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: reguler,
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/btn_wishlist_active.png',
                  width: 34,
                  height: 34,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
