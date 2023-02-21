import 'package:flutter/material.dart';

class RoomSection extends StatelessWidget {
  const RoomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 70,
      child:  ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.all(10),
        children: [
          createRoomButoon()
        ],
      ),
    );
  }

  Widget createRoomButoon (){
    return OutlinedButton.icon(
              onPressed: () => {},
              icon: const Icon(
                Icons.video_call,
                color: Colors.purple,
              ),
              label: const Text("Create \nRoom"),
              style: OutlinedButton.styleFrom(
                shape: const StadiumBorder(),
                side: BorderSide(
                  color: Colors.blue.shade100,
                  width: 2

                )
              ),
              );
  }
}
