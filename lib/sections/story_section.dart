import 'package:flutter/material.dart';
import 'package:socialmedia_facebook/assets.dart';
import 'package:socialmedia_facebook/widgets/stroy_card.dart';

class StorySection extends StatelessWidget {
  final bool borderStatus;
  const StorySection({super.key, this.borderStatus = false});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryCard(
            avatar: raj,
            story: raj,
            labelText: "Add To Story",
            createButtonstaus: true,
          ),
          StoryCard(
              labelText: "Mammoty",
              avatar: mammooty,
              story: mammPost,
              borderStatus: true),
          StoryCard(
              labelText: "Mohanlal",
              avatar: mohanlal,
              story: mohnPost,
              borderStatus: true),
          StoryCard(
              labelText: "Mammoty",
              avatar: mammooty,
              story: mammPost,
              borderStatus: true),
          StoryCard(
              labelText: "Prithvi Raj",
              avatar: raj,
              story: rajPost,
              borderStatus: true),
        ],
      ),
    );
  }
}
