import 'package:flutter/material.dart';
import 'package:socialmedia_facebook/sections/room_section.dart';
import 'package:socialmedia_facebook/sections/status_section.dart';
import 'package:socialmedia_facebook/sections/story_section.dart';
import 'package:socialmedia_facebook/widgets/app_bar_button.dart';
import 'package:socialmedia_facebook/widgets/header_button_section.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
            
    Widget thinDivider = Divider(thickness: 1,color: Colors.grey[300],);
    Widget thickDivider = Divider(thickness: 10, color: Colors.grey[300],);

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          actions: [
            AppBarButton(buttonIcon: Icons.search,buttonAction: () => print("serach button pressed"),),
            AppBarButton(buttonIcon: Icons.chat,buttonAction: () => print("contact button clicked"),)
          ],
          title: const Text(
            "facebook",
            style: TextStyle(
                color: Colors.blue, fontSize: 26, fontWeight: FontWeight.bold),
          ),
        ),
        body: ListView(
          children: [
            const StatusSection(),
            thinDivider,
            const HeaderButtonSection(),
            thickDivider,
            const RoomSection(),
            thickDivider,
            const StorySection()
          ],
        ),
      ),
    );
  }
}
