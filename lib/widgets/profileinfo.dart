import 'package:flutter/material.dart';

class ProfileInfo extends StatelessWidget {
  ProfileInfo(this.title, this.value);
  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value,
          style: TextStyle(
            fontSize: 17,
          ),
        ),
        Text(title, style: TextStyle(color: Colors.grey[600])),
      ],
    );
  }
}
