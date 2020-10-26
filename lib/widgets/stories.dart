import 'package:Flutter_Playground/config/palette.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Stories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: Colors.white,
      child: ListView.builder(
          padding: const EdgeInsets.symmetric(
            vertical: 10.0,
            horizontal: 8.0,
          ),
          scrollDirection: Axis.horizontal,
          itemCount: 20,
          itemBuilder: (BuildContext context, int index) {
            if (index == 0) {
              return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: _StoryCard(isAddStory: true));
            }
            return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: _StoryCard());
          }),
    );
  }
}

class _StoryCard extends StatelessWidget {
  final bool isAddStory;

  const _StoryCard({Key key, this.isAddStory = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Container(
            width: 110,
            height: double.infinity,
            color: Colors.grey[200],
          ),
        ),
        Positioned(
            top: 8,
            left: 8,
            child: isAddStory
                ? Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle),
                    child: Center(
                      child: IconButton(
                        icon: const Icon(Icons.add),
                        iconSize: 25,
                        color: Palette.facebookBlue,
                        onPressed: () => print('add story'),
                      ),
                    ),
                  )
                : CircleAvatar(
                    radius: 20,
                    backgroundColor: Palette.facebookBlue,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Text('S'),
                      radius: 17,
                    ),
                  )),
        Positioned(
            bottom: 8,
            left: 8,
            right: 8,
            child: Text(
              isAddStory ? 'Add to Story' : 'Username',
              style: const TextStyle(
                  color: Colors.grey, fontWeight: FontWeight.bold),
            ))
      ],
    );
  }
}
