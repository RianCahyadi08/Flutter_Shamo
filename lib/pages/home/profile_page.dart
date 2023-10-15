import 'package:flutter/material.dart';
import 'package:shamo/theme/theme.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  Widget header() {
    return AppBar(
      backgroundColor: backgroundColor1,
      // centerTitle: true,
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
      // actions: [
      //   Image.asset(
      //     'assets/image_profile.png',
      //   ),
      //   Column(
      //     children: [
      //       Text(
      //         'Hallo, Alex',
      //       ),
      //       Text(
      //         '@alexkeinn',
      //       )
      //     ],
      //   ),
      //   Image.asset(
      //     'assets/btn_exit.png',
      //     width: 20,
      //     height: 20,
      //   )
      // ],
      elevation: 0,
      // title: Text(
      //   'Favourite Shoes',
      //   style: primaryTextStyle.copyWith(
      //     fontSize: 18,
      //     fontWeight: medium,
      //     letterSpacing: 0.18,
      //   ),
      // ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        header(),
      ],
    );
  }
}
