import 'package:facebook/widgets/avatar.dart';
import 'package:facebook/widgets/blueTick.dart';
import 'package:flutter/material.dart';

class Postcard extends StatelessWidget {
  final String avatar;
  final String name;

  Postcard({required this.avatar,required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ListTile(
            leading: Avatar(displayName: avatar, activeStatus: false),
            title: Row(
              children: [
                Text(name),
                SizedBox(width: 10,),
                Verification()
              ],
            ),
            subtitle: Text("5h"),
          ),
        ],
      ),
    );
  }
}
