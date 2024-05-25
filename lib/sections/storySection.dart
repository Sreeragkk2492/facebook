import 'package:facebook/widgets/appBarButton.dart';
import 'package:facebook/widgets/assets.dart';
import 'package:facebook/widgets/storyCard.dart';
import 'package:flutter/material.dart';

class StorySection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryCard(
            labelText: "Add to story",
            avatar: profile4,
            story: profile4,
            activeStatus: true,
          ),
          StoryCard(
            labelText: "Sreerag",
            avatar: profile1,
            story: story1,
            activeStatus: false,
            storySection: true,
          ),
          StoryCard(
            labelText: "Rahul",
            avatar: profile2,
            story: story2,
            activeStatus: false,
            storySection: true,
          ),
          StoryCard(
            labelText: "Vishnu",
            avatar: profile3,
            story: story3,
            activeStatus: false,
            storySection: true,
          ),
          StoryCard(
            labelText: "Abijith",
            avatar: profile5,
            story: story4,
            activeStatus: false,
            storySection: true,
          ),
          StoryCard(
            labelText: "prajith",
            avatar: profile6,
            story: story5,
            activeStatus: false,
            storySection: true,
          ),
        ],
      ),
    );
  }
}
