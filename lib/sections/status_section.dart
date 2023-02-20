import 'package:flutter/material.dart';
import 'package:socialmedia_facebook/assets.dart';

class StatusSection extends StatelessWidget {
  const StatusSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ClipRRect(borderRadius: BorderRadius.circular(100),
      child: Image.asset(mohanlal,width: 50,height: 50,),
      ),
      title: const TextField(
        decoration: InputDecoration(
          hintText: "What's on your mind?",
          hintStyle: TextStyle(color: Colors.black45,fontSize: 20),
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          errorBorder: InputBorder.none
        ),
      ),
    );
  }
}