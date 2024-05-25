// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class Appbarbutton extends StatelessWidget {

  final  IconData buttonIcon;
  final void Function() buttonAction;
  final Color iconColor;


  const Appbarbutton({super.key, 
    required this.buttonIcon,
    required this.buttonAction,
    this.iconColor=Colors.black,
    
    });
  

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        shape: BoxShape.circle,
        
      ),
      child: IconButton(
         icon: Icon(buttonIcon),
        onPressed: buttonAction,
        color: Colors.black,
        iconSize: 25.0,

       
        ),
      );
  }
}