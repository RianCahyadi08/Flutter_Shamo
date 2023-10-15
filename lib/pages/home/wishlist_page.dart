import 'package:flutter/material.dart';
import 'package:shamo/theme/theme.dart';
import 'package:shamo/widgets/wishlist_card.dart';

class WishlistPage extends StatelessWidget {
  const WishlistPage({super.key});

  Widget header() {
    return AppBar(
      backgroundColor: backgroundColor1,
      centerTitle: true,
      automaticallyImplyLeading: false,
      elevation: 0,
      title: Text(
        'Favourite Shoes',
        style: primaryTextStyle.copyWith(
          fontSize: 18,
          fontWeight: medium,
          letterSpacing: 0.18,
        ),
      ),
    );
  }

  Widget emptyWishlist() {
    return Expanded(
      child: Container(
        width: double.infinity,
        color: backgroundColor3,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/icon_love.png',
              width: 74,
              height: 62,
            ),
            const SizedBox(
              height: 23,
            ),
            Text(
              'You don\'t have dream shoes?',
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium,
                letterSpacing: 0.08,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              'Let\'s find your favorite shoes',
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
                onPressed: () {},
                style: TextButton.styleFrom(
                    backgroundColor: primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 10,
                    )),
                child: Text(
                  'Explore Store',
                  style: primaryTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget content() {
    return Expanded(
      child: Container(
        color: backgroundColor3,
        child: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          children: const [
            WishlistCard(),
            WishlistCard(),
            WishlistCard(),
          ],
        ),
      ),
      // child: ListView(
      //   children: [
      //     WishlistItem(),
      //     WishlistItem(),
      //     WishlistItem(),
      //   ],
      // ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        header(),
        // emptyWishlist(),
        content(),
      ],
    );
  }
}
