import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:socialmedia_facebook/assets.dart';
import 'package:socialmedia_facebook/widgets/app_bar_button.dart';

class StoryCard extends StatelessWidget {
  const StoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 5, right: 5, top: 10, bottom: 10),
      width: 150,
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(raj),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(15)),
      child: Stack(
        children: [
          Positioned(
            left: 5,
            top: 5,
            child: AppBarButton(
              buttonIcon: Icons.add,
              iconColor: Colors.blue,
              buttonAction: () => print("add button clicked"),
            ),
          ),
          const Positioned(
              left: 20,
              bottom: 15,
              child: Text(
                "Add To Story",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              )),
        ],
      ),
    );
  }
}
