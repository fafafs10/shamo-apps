import 'package:flutter/material.dart';
import 'package:shamo/pages/home/chat_page.dart';
import 'package:shamo/pages/home/favourite_page.dart';
import 'package:shamo/pages/home/home_page.dart';
import 'package:shamo/pages/home/profile_page.dart';
import 'package:shamo/theme.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    Widget body() {
      switch (currentPage) {
        case 0:
          return HomePage();
          break;
        case 1:
          return ChatPage();
          break;
        case 2:
          return FavouritePage();
          break;
        case 3:
          return ProfilePage();
          break;
        default:
          return HomePage();
      }
    }

    Widget cartFloatingButton() {
      return FloatingActionButton(
        backgroundColor: greenColor,
        onPressed: () {},
        child: Image.asset(
          "assets/images/cart.png",
          width: 20,
        ),
      );
    }

    Widget customNav() {
      return ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        child: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 14,
          clipBehavior: Clip.antiAlias,
          child: BottomNavigationBar(
              backgroundColor: black4Color,
              type: BottomNavigationBarType.fixed,
              currentIndex: currentPage,
              onTap: (value) {
                setState(() {
                  print(value);
                  currentPage = value;
                });
              },
              items: [
                BottomNavigationBarItem(
                    icon: Container(
                      margin: EdgeInsets.only(top: 20, bottom: 10),
                      child: Image.asset(
                        "assets/images/home.png",
                        width: 21,
                        color: currentPage == 0 ? purpleColor : lightGreyColor,
                      ),
                    ),
                    label: ''),
                BottomNavigationBarItem(
                    icon: Container(
                      margin: EdgeInsets.only(top: 21, bottom: 11),
                      child: Image.asset(
                        "assets/images/chat.png",
                        width: 20,
                        color: currentPage == 1 ? purpleColor : lightGreyColor,
                      ),
                    ),
                    label: ''),
                BottomNavigationBarItem(
                    icon: Container(
                      margin: EdgeInsets.only(top: 21, bottom: 11),
                      child: Image.asset(
                        "assets/images/favorite.png",
                        width: 20,
                        color: currentPage == 2 ? purpleColor : lightGreyColor,
                      ),
                    ),
                    label: ''),
                BottomNavigationBarItem(
                    icon: Container(
                      margin: EdgeInsets.only(top: 20, bottom: 10),
                      child: Image.asset(
                        "assets/images/profile.png",
                        width: 18,
                        color: currentPage == 3 ? purpleColor : lightGreyColor,
                      ),
                    ),
                    label: ''),
              ]),
        ),
      );
    }

    return Scaffold(
      backgroundColor: blackColor,
      floatingActionButton: cartFloatingButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: customNav(),
      body: body(),
    );
  }
}
