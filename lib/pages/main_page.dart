import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:projects/components/bottom_navigation_item.dart';
import 'package:projects/pages/home_page.dart';
import 'package:projects/pages/profile_page.dart';

import 'package:projects/config/app_icons.dart';
import 'package:projects/styles/app_colors.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Menus currentIndex = Menus.home;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: pages[currentIndex.index],
      bottomNavigationBar: MyBottomNavigation(
        currentIndex: currentIndex,
        onTab: (value) {
          setState(() {
            currentIndex = value;
          });
        },
      ),
    );
  }

  final pages = [
    HomePage(),
    Center(
      child: Text(AppIcons.icFavorite),
    ),
    Center(
      child: Text(AppIcons.icAdd),
    ),
    Center(
      child: Text(AppIcons.icMessage),
    ),
    ProfilePage(),
  ];
}

enum Menus { home, favorite, add, messages, user }

class MyBottomNavigation extends StatelessWidget {
  final Menus currentIndex;
  final ValueChanged<Menus> onTab;
  const MyBottomNavigation(
      {super.key, required this.currentIndex, required this.onTab});

  Widget build(BuildContext context) {
    return Container(
      height: 87,
      margin: EdgeInsets.all(24),
      child: Stack(
        children: [
          Positioned(
            top: 17,
            right: 0,
            left: 0,
            child: Container(
              height: 70,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(25))),
              child: Row(
                children: [
                  Expanded(
                    child: BottomNavigationItem(
                      onPressed: () => onTab(Menus.home),
                      icon: AppIcons.icHome,
                      current: currentIndex,
                      name: Menus.home,
                    ),
                  ),
                  Expanded(
                    child: BottomNavigationItem(
                      onPressed: () => onTab(Menus.favorite),
                      icon: AppIcons.icFavorite,
                      current: currentIndex,
                      name: Menus.favorite,
                    ),
                  ),
                  Spacer(),
                  Expanded(
                    child: BottomNavigationItem(
                      onPressed: () => onTab(Menus.messages),
                      icon: AppIcons.icMessage,
                      current: currentIndex,
                      name: Menus.messages,
                    ),
                  ),
                  Expanded(
                      child:  BottomNavigationItem(
                        onPressed: () => onTab(Menus.user),
                        icon: AppIcons.icUser,
                        current: currentIndex,
                        name: Menus.user,
                      ),),
                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            child: GestureDetector(
              onTap: () => (Menus.add),
              child: Container(
                height: 64,
                width: 64,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  shape: BoxShape.circle,
                ),
                child: SvgPicture.asset(AppIcons.icAdd),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Todo: Custom Tab Navigation
