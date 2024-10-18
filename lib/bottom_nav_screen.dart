import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:navigation_app/contacts_screen.dart';
import 'package:navigation_app/favourites_screen.dart';
import 'package:navigation_app/recent_screen.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  RxInt selectedItemIndex = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Obx(() {
          return selectedItemIndex.value == 0
              ? FavouritesScreen()
              : selectedItemIndex.value == 1
                  ? RecentScreen()
                  : ContactsScreen();
        }),
      ),
      bottomNavigationBar: Obx(() {
        return BottomNavigationBar(
          currentIndex: selectedItemIndex.value,
          selectedItemColor: Colors.deepPurple,
          onTap: (value) {
            selectedItemIndex.value = value;
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.star_border),
              label: 'Favourites',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.access_time),
              label: 'Recent',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined),
              label: 'Contacts',
            ),
          ],
        );
      }),
    );
  }
}
