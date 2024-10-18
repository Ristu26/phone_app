import 'package:flutter/material.dart';
import 'package:navigation_app/common_button.dart';
import 'package:navigation_app/custom_button.dart';

class ContactsScreen extends StatelessWidget {
  const ContactsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: CommonButton(),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: ListTile(
              title: Text(
                'Create new contact',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.deepPurple,
                ),
              ),
              leading: Icon(
                Icons.add,
                size: 24,
              ),
              style: ListTileStyle.list,
              selected: true,
              selectedColor: Colors.deepPurple,
            ),
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: 25,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: SizedBox(
                        width: 400,
                        child: ListTile(
                          title: Text(
                            'Ristu Adhikary',
                            style: TextStyle(
                              color: const Color.fromARGB(255, 93, 92, 92),
                            ),
                          ),
                          leading: Icon(
                            Icons.account_circle,
                            size: 40,
                          ),
                          style: ListTileStyle.list,
                          selected: true,
                          selectedColor: Colors.deepPurple,
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: const CustomButton(),
    );
  }
}
