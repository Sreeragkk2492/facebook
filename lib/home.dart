import 'package:facebook/sections/buttonSection.dart';
import 'package:facebook/sections/roomSection.dart';
import 'package:facebook/sections/statusSection.dart';
import 'package:facebook/sections/storySection.dart';
import 'package:facebook/widgets/appBarButton.dart';
import 'package:facebook/widgets/assets.dart';
import 'package:facebook/widgets/postCard.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {

  Widget thindivider=Divider(
              thickness: 1,
              color: Colors.grey[300],
            );
  Widget thickdivider= Divider(
              thickness: 10,
              color: Colors.grey[300],
            );         



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text(
            "facebook",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 26,
              fontWeight: FontWeight.bold
            ),
          ),
          actions: [
            Appbarbutton(
              buttonIcon: Icons.search,
              buttonAction: () {
                print("search button is clicked");
              },
            ),
            Appbarbutton(
              buttonIcon: Icons.message_outlined,
              buttonAction: () {
                print("message button is clicked");
              },
            ),
          ],
        ),
        body: ListView(
          children: [
            StatuSection(),
            thindivider,
            
            HeaderButton(),
            thickdivider,
            RoomSection(),
            thickdivider,
            StorySection(),
            thickdivider,
            Postcard(avatar:profile1 , name: "Sreerag")
          ],
        ),
      ),
    );
  }
}
