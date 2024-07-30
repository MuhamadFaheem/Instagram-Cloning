import 'package:flutter/material.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.center, children: [
      Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.purple, Colors.pink, Colors.orange, Colors.yellow],
            stops: [
              0.0,
              0.3,
              0.6,
              1.0
            ], // Optional: Controls where the colors stop in the gradient
          ),
          borderRadius: BorderRadius.circular(60),
        ),
      ),
      Container(
        width: 92,
        height: 92,
        decoration: BoxDecoration(
          color: Colors.grey[300],
          image: DecorationImage(
              image: NetworkImage("https://picsum.photos/250?image=9"),
              fit: BoxFit.cover),
          border: Border.all(color: Colors.white, width: 3),
          borderRadius: BorderRadius.circular(60),
        ),
      ),
    ]);
  }
}
