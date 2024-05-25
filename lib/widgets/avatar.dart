import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final String displayName;
  final bool activeStatus;
  final bool storyStatus;

  Avatar(
      {required this.displayName,
      required this.activeStatus,
      this.storyStatus = false});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: storyStatus
                  ? Border.all(
                      color: Colors.blueAccent,
                      width: 3,
                    )
                  : Border()),
          padding: const EdgeInsets.only(left: 3, right: 3),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(
              displayName,
              height: 50,
              width: 50,
            ),
          ),
        ),
        activeStatus == true
            ? Positioned(
                bottom: 0,
                right: 3,
                child: Container(
                  width: 15,
                  height: 15,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 2, 247, 63),
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white,
                      width: 2,
                    ),
                  ),
                ),
              )
            : SizedBox(),
      ],
    );
  }
}
