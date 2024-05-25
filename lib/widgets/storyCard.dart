import 'package:facebook/widgets/appBarButton.dart';
import 'package:facebook/widgets/assets.dart';
import 'package:facebook/widgets/avatar.dart';
import 'package:flutter/material.dart';

class StoryCard extends StatelessWidget {
  final String labelText;
  final String story;
  final String avatar;
  final bool activeStatus;
  final bool storySection;

  StoryCard({
    required this.labelText,
    required this.story,
    required this.avatar,
    this.activeStatus = false,
    this.storySection = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: EdgeInsets.only(left: 5, right: 5, top: 10, bottom: 10),
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(story), fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(10)),
      child: Stack(
        children: [
          Positioned(
            left: 1,
            top: 2,
            child: activeStatus
                ? Appbarbutton(
                    buttonIcon: Icons.add,
                    iconColor: Colors.blue,
                    buttonAction: () {
                      print("adding story");
                    },
                  )
                : Avatar(
                    displayName: avatar,
                    activeStatus: false,
                    storyStatus: storySection,
                  ),
          ),
          Positioned(
            bottom: 10,
            left: 10,
            child: Text(
              labelText != null ? labelText : "N/A",
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
