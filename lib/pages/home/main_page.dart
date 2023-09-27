import 'package:flutter/material.dart';
import 'package:shamo/theme/theme.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  Widget cardButton() {
    return FloatingActionButton(
      onPressed: () {},
      backgroundColor: secondaryColor,
      child: Image.asset(
        'assets/icon_cart.png',
        width: 60,
      ),
    );
  }

  Widget customButtonNav() {
    return ClipRRect(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(30),
      ),
      child: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 5,
        clipBehavior: Clip.antiAlias,
        child: BottomNavigationBar(
            backgroundColor: backgroundColor4,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                  label: '',
                  icon: Image.asset(
                    'assets/icon_home.png',
                    width: 21,
                  )),
              BottomNavigationBarItem(
                  label: '',
                  icon: Image.asset(
                    'assets/icon_chat.png',
                    width: 20,
                  )),
              BottomNavigationBarItem(
                  label: '',
                  icon: Image.asset(
                    'assets/icon_wishlist.png',
                    width: 20,
                  )),
              BottomNavigationBarItem(
                  label: '',
                  icon: Image.asset(
                    'assets/icon_profile.png',
                    width: 18,
                  )),
            ]),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor1,
      floatingActionButton: cardButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: customButtonNav(),
      body: Center(
        child: Text('Main page'),
      ),
    );
  }
}
