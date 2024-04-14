import 'package:flutter/material.dart';

class TabContent extends StatelessWidget {
  final String type;

  const TabContent({Key? key, required this.type}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // You can customize this method based on the type
    return Center(
      child: Text('Content for $type'),
    );
  }
}
