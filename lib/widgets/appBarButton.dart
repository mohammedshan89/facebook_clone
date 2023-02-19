import 'package:flutter/material.dart';

class AppBarButton extends StatelessWidget {
  @required final IconData? buttonIcon;
  @required final void Function()? buttonAction;

    const AppBarButton({super.key, this.buttonIcon, this.buttonAction});

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
          color: Colors.black,
          size: 25,
        ),
      ),
    );
  }
}