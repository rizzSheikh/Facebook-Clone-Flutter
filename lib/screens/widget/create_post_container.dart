import 'package:facebook_flutter/models/models.dart';
import 'package:facebook_flutter/screens/widget/profile_avatar.dart';
import 'package:flutter/material.dart';

class CreatePostContainer extends StatelessWidget {
  final User currentUser;

  const CreatePostContainer({Key? key, required this.currentUser}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(12.0, 8.0, 12.0, 0.0),
      color: Colors.white,
      child: Column(
        children: [
          Row(
            children: [
              ProfileAvatar(imageUrl: currentUser.imageUrl),
              const SizedBox(
                width: 8.0,
              ),
              Expanded(
                child: TextField(
                  decoration: InputDecoration.collapsed(hintText: "what\'s on your mind?"),
                ),
              )
            ],
          ),
          const Divider(
            height: 10.0,
            thickness: 0.7,
          ),
          SizedBox(
            height: 40.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton.icon(
                  onPressed: () {},
                  label: Text("Live"),
                  icon: const Icon(
                    Icons.videocam,
                    color: Colors.red,
                  ),
                ),
                const VerticalDivider(
                  width: 8.0,
                ),
                TextButton.icon(
                  onPressed: () {},
                  label: Text("Photo"),
                  icon: const Icon(
                    Icons.photo_library,
                    color: Colors.green,
                  ),
                ),
                const VerticalDivider(
                  width: 8.0,
                ),
                TextButton.icon(
                  onPressed: () {},
                  label: Text("Room"),
                  icon: const Icon(
                    Icons.video_call,
                    color: Colors.purpleAccent,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
