import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CommonButton extends StatelessWidget {
  const CommonButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 350,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 226, 211, 250),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 5, left: 20),
            child: Icon(
              Icons.search,
              color: Colors.deepPurple,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5, left: 20),
            child: SizedBox(
              height: 50,
              width: 200,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search contacts',
                  hintStyle: TextStyle(
                    color: Colors.deepPurple,
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Get.defaultDialog(
                title: 'Google',
                titleStyle: TextStyle(
                  color: Colors.deepPurple,
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.mic_outlined,
                      color: Colors.deepPurple,
                      size: 50,
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Try saying something\n\nEnglish (India)',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 5, left: 10),
              child: Icon(
                Icons.mic,
                color: Colors.deepPurple,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: PopupMenuButton<String>(
              icon: Icon(
                Icons.more_vert,
                color: Colors.deepPurple,
              ),
              onSelected: (String result) {
                switch (result) {
                  case 'Call history':
                    break;
                  case 'Settings':
                    break;
                  case 'Help and feedback':
                    break;
                }
              },
              itemBuilder: (BuildContext context) => [
                PopupMenuItem(
                  value: 'Call history',
                  child: Text(
                    'Call history',
                    style: TextStyle(
                      color: Colors.deepPurple,
                    ),
                  ),
                ),
                PopupMenuItem(
                  value: 'Settings',
                  child: Text(
                    'Settings',
                    style: TextStyle(
                      color: Colors.deepPurple,
                    ),
                  ),
                ),
                PopupMenuItem(
                  value: 'Help and feedback',
                  child: Text(
                    'Help and feedback',
                    style: TextStyle(
                      color: Colors.deepPurple,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
