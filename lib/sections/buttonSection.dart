import 'dart:ffi';

import 'package:flutter/material.dart';

class HeaderButton extends StatelessWidget {
  Widget headerButton({
    required  Function() buttonAction,
    required String buttonName,
    required Color buttonColor,
    required IconData buttonIcon,
  }) {
    return TextButton.icon(
      onPressed: buttonAction,
      icon: Icon(
        buttonIcon,
        color: buttonColor,
      ),
      label: Text(buttonName),
      style: TextButton.styleFrom(
        foregroundColor: Colors.black,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          headerButton(
            buttonAction: () {
              print("going live");
            },
            buttonIcon: Icons.video_call,
            buttonColor: Colors.red,
            buttonName: "live",
          ),
          VerticalDivider(
            thickness: 1,
            color: Colors.grey[300],
          ),
          headerButton(
            buttonAction: () {
              print("to photos");
            },
            buttonIcon: Icons.photo_album_outlined,
            buttonColor: Colors.green,
            buttonName: "photos",
          ),
          VerticalDivider(
            thickness: 1,
            color: Colors.grey[300],
          ),
          headerButton(
            buttonAction: () {
              print("creating rooms");
            },
            buttonIcon: Icons.video_call_rounded,
            buttonColor: Colors.purple,
            buttonName: "rooms",
          ),
        ],
      ),
    );
  }
}
