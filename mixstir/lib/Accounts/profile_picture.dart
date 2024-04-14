import 'package:flutter/material.dart';

class ProfilePicture extends StatelessWidget {
  final String imageUrl;
  final VoidCallback onPressed;

  const ProfilePicture({
    super.key,
    required this.imageUrl,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: const Color.fromARGB(255, 72, 124, 73), // Set border color
              width: 3.0, // Set border width
            ),
          ),
          child: CircleAvatar(
            radius: 50,
            backgroundImage: NetworkImage(imageUrl),
          ),
        ),
      ),
    );
  }
}
