import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final String displayImage;
  final bool displayStatus;
  const Avatar(
      {super.key, required this.displayImage, required this.displayStatus});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        padding: const EdgeInsets.only(left: 4, right: 4),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Image.asset(
            displayImage,
            width: 50,
            height: 50,
          ),
        ),
      ),
      displayStatus == true
          ? Positioned(
              right: 1,
              bottom: 0,
              child: Container(
                width: 15,
                height: 15,
                decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    border: Border.all(color: Colors.white, width: 2),
                    shape: BoxShape.circle),
              ))
          : const SizedBox()
    ]);
  }
}
