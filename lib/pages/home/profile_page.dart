import 'package:flutter/material.dart';
import 'package:shamo/theme/theme.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  Widget header() {
    return AppBar(
      backgroundColor: backgroundColor1,
      elevation: 0,
      automaticallyImplyLeading: false,
      flexibleSpace: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(30),
          child: Row(
            children: [
              ClipOval(
                child: Image.asset(
                  'assets/image_profile.png',
                  height: 64,
                  width: 64,
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hallo, ALex',
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
                    )
                  ],
                ),
              ),
              Image.asset(
                'assets/btn_exit.png',
                width: 20,
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget menuItem(String text) {
    return Container(
      margin: const EdgeInsets.only(
        top: 16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: secondaryTextStyle.copyWith(
              fontSize: 13,
            ),
          ),
          Icon(
            Icons.chevron_right,
            color: primaryTextColor,
          ),
        ],
      ),
    );
  }

  Widget content() {
    return Expanded(
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.only(
          left: 30,
          right: 30,
          top: 20,
        ),
        color: backgroundColor3,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Account',
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            menuItem('Edit Profile'),
            menuItem('Your Orders'),
            menuItem('Help'),
            const SizedBox(
              height: 35,
            ),
            Text(
              'General',
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            ),
            menuItem('Privacy & Policy'),
            menuItem('Term of Service'),
            menuItem('Rate App'),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        header(),
        content(),
      ],
    );
  }
}
