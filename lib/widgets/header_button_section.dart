import 'package:flutter/material.dart';


class HeaderButtonSection extends StatelessWidget {
  const HeaderButtonSection({super.key});

  Widget headerButton(
      {@required void Function()? buttonAction,
      @required String? buttonText,
      @required IconData? buttonIcon,
      @required Color? buttonColor}) {
    return TextButton.icon(
      onPressed: buttonAction,
      icon: Icon(buttonIcon, color: buttonColor),
      label: Text(buttonText!),
    );
  }
 

  @override
  Widget build(BuildContext context) {
    
    Widget verticalDivider = VerticalDivider(
      thickness: 1,
      color: Colors.grey[300],
    );

    return SizedBox(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          headerButton(
              buttonAction: () => print("vedio button pressed"),
              buttonText: "Live",
              buttonIcon: Icons.video_call,
              buttonColor: Colors.red),
         verticalDivider,
          headerButton(
              buttonAction: () => print("Photo button pressed"),
              buttonText: "Photo",
              buttonIcon: Icons.photo_library,
              buttonColor: Colors.green),
          verticalDivider,
          headerButton(
              buttonAction: () => print("Room button pressed"),
              buttonText: "Room",
              buttonIcon: Icons.video_call,
              buttonColor: Colors.red), 
              
        ],
      ),
    );
  }
}
