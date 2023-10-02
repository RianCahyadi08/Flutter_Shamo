import 'package:flutter/material.dart';
import 'package:shamo/theme/theme.dart';
import 'package:shamo/widgets/product_arrival.dart';
import 'package:shamo/widgets/product_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Widget header() {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 30,
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hallo, Alex',
                  style: primaryTextStyle.copyWith(
                    fontSize: 24,
                    fontWeight: semiBold,
                    letterSpacing: 0.24,
                  ),
                ),
                Text(
                  '@alexkeinn',
                  style: subtitleTextStyle.copyWith(
                    fontSize: 16,
                    letterSpacing: 0.08,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          Container(
            width: 54,
            height: 54,
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage('assets/image_profile.png'))),
          )
        ],
      ),
    );
  }

  Widget categories() {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 10,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: subtitleColor,
                ),
                color: primaryColor,
              ),
              child: Text(
                'All Shoes',
                style: primaryTextStyle.copyWith(
                  fontSize: 13,
                  fontWeight: medium,
                ),
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 10,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: transparanColor,
                border: Border.all(
                  color: subtitleColor,
                ),
              ),
              child: Text(
                'Running',
                style: subtitleTextStyle.copyWith(
                  fontSize: 13,
                  fontWeight: medium,
                ),
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 10,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: transparanColor,
                border: Border.all(
                  color: subtitleColor,
                ),
              ),
              child: Text(
                'Training',
                style: subtitleTextStyle.copyWith(
                  fontSize: 13,
                  fontWeight: medium,
                ),
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 10,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: transparanColor,
                border: Border.all(
                  color: subtitleColor,
                ),
              ),
              child: Text(
                'Basketball',
                style: subtitleTextStyle.copyWith(
                  fontSize: 13,
                  fontWeight: medium,
                ),
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 10,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: transparanColor,
                border: Border.all(
                  color: subtitleColor,
                ),
              ),
              child: Text(
                'Hiking',
                style: subtitleTextStyle.copyWith(
                  fontSize: 13,
                  fontWeight: medium,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget popularProductTitle() {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 30,
        horizontal: 30,
      ),
      child: Text(
        'Popular Products',
        style: primaryTextStyle.copyWith(
          fontSize: 22,
          fontWeight: semiBold,
        ),
      ),
    );
  }

  Widget popularProduct() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          SizedBox(
            width: defaultMargin,
          ),
          const Row(
            children: [
              ProductCard(),
              ProductCard(),
              ProductCard(),
              ProductCard(),
            ],
          )
        ],
      ),
    );
  }

  Widget newArrivalsTitle() {
    return Container(
      margin: const EdgeInsets.only(
        left: 30,
        top: 30,
        bottom: 14,
      ),
      child: Text(
        'New Arrivals',
        style: primaryTextStyle.copyWith(
          fontSize: 22,
          fontWeight: semiBold,
          letterSpacing: 0.22,
        ),
      ),
    );
  }

  Widget newArrivalsProduct() {
    return Container(
      margin: const EdgeInsets.only(
        top: 14,
      ),
      child: const Column(
        children: [
          ProductArrival(),
          ProductArrival(),
          ProductArrival(),
          ProductArrival(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        header(),
        categories(),
        popularProductTitle(),
        popularProduct(),
        newArrivalsTitle(),
        newArrivalsProduct(),
      ],
    );
  }
}
