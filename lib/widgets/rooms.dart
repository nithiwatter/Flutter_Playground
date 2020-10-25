import 'package:flutter/material.dart';
import 'package:Flutter_Playground/config/palette.dart';

class Rooms extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: Colors.white,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 4),
        scrollDirection: Axis.horizontal,
        itemCount: 20,
        itemBuilder: (BuildContext context, int index) {
          if (index == 0) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: _CreateRoomButton(),
            );
          }
          return Container(
            margin: const EdgeInsets.all(2),
            child: CircleAvatar(
              backgroundColor: Colors.grey[200],
              child: Text('A'),
            ),
          );
        },
      ),
    );
  }
}

class _CreateRoomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        onPressed: () => print('create room'),
        child: Row(
          children: [
            Icon(
              Icons.video_call,
              size: 35.0,
              color: Colors.purple,
            ),
            const SizedBox(width: 4.0),
            Text('Create\nRoom'),
          ],
        ),
        style: OutlinedButton.styleFrom(
            primary: Palette.facebookBlue,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            side: BorderSide(
              width: 3,
              color: Colors.blueAccent[100],
            )));
  }
}
