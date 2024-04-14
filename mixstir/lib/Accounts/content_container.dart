import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../components/image_container.dart';
import '../components/follower_container.dart';

class ContentContainer extends StatelessWidget {
  final String tabName;
  final String usertag;

  const ContentContainer(
      {Key? key, required this.tabName, required this.usertag})
      : super(key: key);

  Future<List<ImageContainer>> loadUserData() async {
    // Function body
    // ...
    return []; // Add this line to return an empty list
  }
    String jsonString = await rootBundle.loadString('assets/user_data.json');
    Map<String, dynamic> jsonData = jsonDecode(jsonString);

    if (tabName == "posts") {
      List<ImageContainer> imageContainers = [];
      for (var item in jsonData["users"][usertag]['tabs'][tabName]) {
        imageContainers.add(
          ImageContainer(
            date: item['date'],
            title: item['title'],
            description: item['content'],
            imageUrl: item['image'],
          ),
        );
      }
      return imageContainers;
    } else if (tabName == "activities") {
      List<ImageContainer> imageContainers = [];
      for (var item in jsonData["users"][usertag]['tabs'][tabName]) {
        imageContainers.add(
          ImageContainer(
            date: item['title'],
            title: item['content'],
            description: item['postTitle'],
            imageUrl: item['postImage'],
          ),
        );
      }
      return imageContainers;
    } else if (tabName == "followers") {
      List<ImageContainer> imageContainers = [];
      for (var item in jsonData["users"][usertag]['tabs'][tabName]) {
        imageContainers.add(
          ImageContainer(
            date: item['handle'],
            title: item['username'],
            imageUrl: item['image'],
          ),
        );
      }
      return imageContainers;
    }
    // Ensure a value is returned in all code paths
  }

  @override
  Widget build(BuildContext context) {
    // Override the build method
    return FutureBuilder<List<ImageContainer>>(
      future: loadUserData(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return CircularProgressIndicator();
        } else if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        } else {
          return SingleChildScrollView(
            child: Column(
              children: snapshot.data!,
            ),
          );
        }
      },
    );
  }
}
