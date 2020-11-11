import 'package:daily_excerises_app/screens/details_screen.dart';
import 'package:flutter/material.dart';
import './bottom_navigation_item.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      height: 80,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BottomNavItem(
            title: 'Today',
            svgSrc: 'assets/icons/calendar.svg',
          ),
          BottomNavItem(
            title: 'All Exercises',
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (ctx) => DetailsScreen(),
                ),
              );
            },
            svgSrc: 'assets/icons/gym.svg',
            isActive: true,
          ),
          BottomNavItem(
            title: 'Settings',
            svgSrc: 'assets/icons/settings.svg',
          ),
        ],
      ),
    );
  }
}
