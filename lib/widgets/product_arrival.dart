import 'package:flutter/material.dart';
import 'package:shamo/theme/theme.dart';

class ProductArrival extends StatelessWidget {
  const ProductArrival({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 30,
        right: 30,
        bottom: 30,
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              'assets/image_10.png',
              height: 120,
              width: 120,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Football',
                  style: secondaryTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: reguler,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  'Predator 20.3 Firm Ground',
                  style: primaryTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: reguler,
                    letterSpacing: 0.16,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  '\$68,47',
                  style: priceTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: medium,
                    letterSpacing: 0.16,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      // width: 120,
      // height: 120,
      // decoration: BoxDecoration(
      //   borderRadius: BorderRadius.circular(20),
      //   color: const Color(0xffECEFEF),
      //   image: const DecorationImage(
      //     image: AssetImage('assets/image_10.png'),
      //   ),
      // ),
    );
  }
}
