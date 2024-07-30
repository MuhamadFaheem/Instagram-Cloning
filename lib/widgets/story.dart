import 'package:flutter/material.dart';

class StoryItem extends StatelessWidget {
  const StoryItem({required this.title, required this.imageUrl});

  final String title;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Column(
        children: [
          Stack(alignment: Alignment.center, children: [
            Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(40),
              ),
            ),
            Container(
              height: 78,
              width: 78,
              decoration: BoxDecoration(
                color: Colors.black,
                border: Border.all(color: Colors.white, width: 4),
                borderRadius: BorderRadius.circular(40),
                image: DecorationImage(
                  image: NetworkImage(imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ]),
          SizedBox(
            height: 5,
          ),
          Text(
            title,
          )
        ],
      ),
    );
  }
}
