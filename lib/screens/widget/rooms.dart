import 'package:facebook_flutter/models/models.dart';
import 'package:facebook_flutter/screens/widgets.dart';
import 'package:facebook_flutter/styles/color_palette.dart';
import 'package:flutter/material.dart';

class Rooms extends StatelessWidget {
  final List<User> onlineUsers;

  const Rooms({Key? key, required this.onlineUsers}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15.0),
      height: 70.0,
      color: Colors.white,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 10.0),
        scrollDirection: Axis.horizontal,
        itemCount: 1 + onlineUsers.length,
        itemBuilder: (context, index) {
          if (index == 0) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: _CreateRoomButton(),
            );
          }

          final User user = onlineUsers[index - 1];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: ProfileAvatar(
              imageUrl: user.imageUrl,
              isActive: true,
            ),
          );
        },
      ),
    );
  }
}

class _CreateRoomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      child: Row(
        children: [
          ShaderMask(
            shaderCallback: (Rect bounds) {
              return ColorPalette.createRoomGradient.createShader(bounds);
            },
            child: Icon(
              Icons.video_call,
              size: 35.0,
              color: Colors.white,
            ),
          ),
          SizedBox(
            width: 10.0,
          ),
          Text(
            "Create \nRoom",
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
      style: OutlinedButton.styleFrom(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          side: BorderSide(
            width: 3.0,
            color: Colors.blueAccent.withOpacity(0.7),
          ),
          textStyle: TextStyle(color: ColorPalette.facebookBlue)),
    );
  }
}
