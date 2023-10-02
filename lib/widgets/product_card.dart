import 'package:flutter/material.dart';
import 'package:shamo/theme/theme.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 215,
      // height: 278,
      margin: EdgeInsets.only(right: defaultMargin),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xffECEFEF),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/image_6.png',
            width: 215,
            height: 150,
            fit: BoxFit.cover,
          ),
          Text(
            'Hiking',
            style: secondaryTextStyle.copyWith(
              fontSize: 12,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            'Court vision 2.0'.toUpperCase(),
            style: nameProductStyle.copyWith(
              fontSize: 18,
              fontWeight: semiBold,
              letterSpacing: 0.18,
            ),
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 6),
          Text(
            '\$58,67',
            style: priceTextStyle.copyWith(
              fontSize: 14,
              fontWeight: medium,
            ),
          ),
        ],
      ),
    );
  }
}
