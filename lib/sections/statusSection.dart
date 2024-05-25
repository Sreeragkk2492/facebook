import 'package:facebook/widgets/assets.dart';
import 'package:facebook/widgets/avatar.dart';
import 'package:flutter/material.dart';

class StatuSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading:ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child:  Avatar(displayName: profile4,activeStatus: false,),
      ),
      title: const TextField(
        decoration: InputDecoration(
          hintText: "what's on your mind?",
          hintStyle: TextStyle(color: Colors.black),
          errorBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
        ),
      ),
    );
  }
}
