import 'package:flutter/material.dart';

class CreatePostContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(12, 8, 12, 0),
      color: Colors.white,
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.grey[200],
              ),
              const SizedBox(width: 8),
              Expanded(
                  child: TextField(
                decoration: InputDecoration.collapsed(
                    hintText: 'What\'s on your mind?'),
              ))
            ],
          ),
          const Divider(
            height: 10,
            thickness: 0.5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.videocam, color: Colors.red, size: 30),
                  label: Text('Live', style: TextStyle(color: Colors.black))),
              const VerticalDivider(
                width: 8,
              ),
              TextButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.insert_photo, color: Colors.green, size: 30),
                  label: Text('Photo', style: TextStyle(color: Colors.black))),
              const VerticalDivider(
                width: 8,
                color: Colors.red,
              ),
              TextButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.video_call, color: Colors.purple, size: 30),
                  label: Text('Room', style: TextStyle(color: Colors.black))),
            ],
          )
        ],
      ),
    );
  }
}
