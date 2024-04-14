import 'package:flutter/material.dart';

class CustomTabBar extends StatelessWidget {
  final String userName;
  final String userTag;
  final TabController tabController; // Make sure to pass TabController

  const CustomTabBar({
    Key? key,
    required this.userName,
    required this.userTag,
    required this.tabController, // Accept the controller in the constructor
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 4,
              blurRadius: 6,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start, // Align text to the left
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(userName,
                      style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold)), // Display the username
                  const SizedBox(height: 4), // Spacing between username and tag
                  Text(userTag,
                      style: const TextStyle(
                          fontSize: 16,
                          color: Colors.grey)), // Display the user tag
                ],
              ),
            ),
            TabBar(
              controller: tabController, // Use the passed TabController
              tabs: const [
                Tab(text: 'Posts'),
                Tab(text: 'Activity'),
                Tab(text: 'Followers'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
