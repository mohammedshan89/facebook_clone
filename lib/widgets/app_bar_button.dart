import 'package:flutter/material.dart';

class AppBarButton extends StatelessWidget {
   final IconData? buttonIcon;
   final void Function()? buttonAction;
    final Color iconColor;
    const AppBarButton({super.key, required this.buttonIcon,required this.buttonAction, this.iconColor = Colors.black});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      decoration:
          BoxDecoration(color: Colors.grey[300], shape: BoxShape.circle),
      child: IconButton(
        onPressed: buttonAction,
        icon: Icon(
          buttonIcon,
          color: iconColor,
          size: 25,
        ),
      ),
    );
  }
}