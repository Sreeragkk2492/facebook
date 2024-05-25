import 'package:facebook/widgets/assets.dart';
import 'package:facebook/widgets/avatar.dart';
import 'package:flutter/material.dart';

class RoomSection extends StatelessWidget {
  Widget roomSectionButton() {
    return Container(
      padding: const EdgeInsets.only(left: 4,right: 4),
      child: OutlinedButton.icon(
      style: OutlinedButton.styleFrom(
          shape: const StadiumBorder(),
          side: const BorderSide(color: Colors.blue, width: 2)),
      onPressed: () {
        print("creating room");
      },
      icon: const Icon(
        Icons.video_call,
        color: Colors.purple,
      ),
      label: const Text("create \nroom"),
    ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: const EdgeInsets.all(10),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          roomSectionButton(),
          Avatar(displayName: profile4,activeStatus: true,),
          Avatar(displayName: profile1,activeStatus: true,),
          Avatar(displayName: profile2,activeStatus: true,),
          Avatar(displayName: profile3,activeStatus: true,),
          Avatar(displayName: profile5,activeStatus: true,),
          Avatar(displayName: profile6,activeStatus: true,),
        ],
      ),
    );
  }
}
