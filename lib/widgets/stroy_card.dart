import 'package:flutter/material.dart';
import 'package:socialmedia_facebook/assets.dart';
import 'package:socialmedia_facebook/widgets/app_bar_button.dart';
import 'package:socialmedia_facebook/widgets/avatar.dart';

class StoryCard extends StatelessWidget {
  final String labelText;
  final String avatar;
  final String story;
  final bool createButtonstaus;
  final bool borderStatus;
  const StoryCard(
      {super.key,
      required this.labelText,
      required this.avatar,
      required this.story,
      this.createButtonstaus = false,
      this.borderStatus = false
      });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 5, right: 5, top: 10, bottom: 10),
      width: 150,
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(story),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(15)),
      child: Stack(
        children: [
          Positioned(
            left: 5,
            top: 5,
            child: createButtonstaus ? AppBarButton(
              buttonIcon: Icons.add,
              iconColor: Colors.blue,
              buttonAction: () => print("add button clicked"),
            ) : Avatar(displayImage: avatar
            , displayStatus: false,borderStatus: borderStatus),
          ),
           Positioned(
              left: 20,
              bottom: 15,
              child: Text(
                labelText,
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              )),
        ],
      ),
    );
  }
}
