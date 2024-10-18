import 'package:flutter/material.dart';
import 'package:navigation_app/common_button.dart';
import 'package:navigation_app/custom_button.dart';

class RecentScreen extends StatelessWidget {
  const RecentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: CommonButton(),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.only(top: 12, left: 20),
              child: Text('Today'),
            ),
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: 15,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    SizedBox(
                      width: 400,
                      child: ListTile(
                        title: Text(
                          'Ristu Adhikary',
                          style: TextStyle(
                            color: const Color.fromARGB(255, 93, 92, 92),
                          ),
                        ),
                        subtitle: Text(
                          '9876543210',
                          style: TextStyle(
                            color: const Color.fromARGB(255, 93, 92, 92),
                          ),
                        ),
                        trailing: Icon(Icons.call),
                        leading: Icon(
                          Icons.account_circle,
                          size: 28,
                        ),
                        style: ListTileStyle.list,
                        selected: true,
                        selectedColor: Colors.deepPurple,
                      ),
                    ),
                    Divider(
                      thickness: 1,
                      color: Color.fromARGB(255, 227, 227, 227),
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
