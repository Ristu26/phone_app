import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:navigation_app/add_screen.dart';
import 'package:navigation_app/common_button.dart';
import 'package:navigation_app/custom_button.dart';

class FavouritesScreen extends StatelessWidget {
  const FavouritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: CommonButton(),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 80),
              child: Image.asset(
                'lib/assets/call.png',
                height: 250,
                width: 250,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                'Call your favourite',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Text(
              'contacts with just one tap',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            InkWell(
              onTap: () {
                Get.to(AddScreen());
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Text(
                  'Add a favorite',
                  style: TextStyle(
                    color: Colors.deepPurple,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: const CustomButton(),
    );
  }
}
