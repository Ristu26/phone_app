import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddScreen extends StatelessWidget {
  const AddScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Choose a contact',
          style: TextStyle(
            color: Colors.deepPurple,
            fontWeight: FontWeight.w500,
            fontSize: 24,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.deepPurple,
            ),
            onPressed: () {
              Get.defaultDialog(
                title: 'Search contacts',
                titleStyle: TextStyle(
                  color: Colors.deepPurple,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
                middleText: 'Try different',
                middleTextStyle: TextStyle(
                  fontSize: 14,
                ),
              );
            },
          ),
        ],
      ),
      body: Column(
        children: [
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
                          subtitle: Text(
                            'Mobile +91 9876543210',
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
    );
  }
}
