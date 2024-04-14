// File: profile_image_widget.dart
import 'package:flutter/material.dart';

class ProfileImageWidget extends StatelessWidget {
  final String imageUrl;
  const ProfileImageWidget({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _showFullImage(context),
      child: CircleAvatar(
        backgroundColor: Colors.blue, // Adjust the background color as needed
        child: ClipOval(
          child: Image.network(
            imageUrl,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  void _showFullImage(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => Dialog(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(imageUrl),
              fit: BoxFit.contain,
            ),
          ),
          child: InkWell(
            onTap: () => Navigator.of(context).pop(),
            child: const Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Icon(Icons.close, color: Colors.grey, size: 30.0),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
