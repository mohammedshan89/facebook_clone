import 'package:flutter/material.dart';
import 'package:socialmedia_facebook/widgets/stroy_card.dart';


class StorySection extends StatelessWidget {
  const StorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
           StoryCard()
        ],
      ),
    );
  }
}