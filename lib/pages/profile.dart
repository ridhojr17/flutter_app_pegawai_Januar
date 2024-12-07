import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Replacing CircleAvatar with Image.network for a square image
            Image.network(
              'https://media2.giphy.com/media/v1.Y2lkPTc5MGI3NjExcmN1dm1neHJ0d2x6Nm9rZ2Z6eHV4ZHU3aDc4cmtyYTVkcDEybzNrdiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/12uXi1GXBibALC/giphy.webp',
              width: 200, // Set the width for the square image
              height: 200, // Set the height for the square image
              fit: BoxFit.cover, // Ensure the image fills the box without distortion
            ),
            SizedBox(
              height: 20,
            ),
            Text('NPM : 2210010522'),
            Text('Nama : Muhammad Ridho Januar'),
            Text('Kelas : 5N'),
          ],
        ),
      ),
    );
  }
}
