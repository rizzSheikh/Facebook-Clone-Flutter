import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_flutter/styles/color_palette.dart';
import 'package:flutter/material.dart';

class ProfileAvatar extends StatelessWidget {
  final String imageUrl;
  final bool isActive;
  final bool hasBorder;

  const ProfileAvatar({
    Key? key,
    required this.imageUrl,
    this.isActive = false,
    this.hasBorder = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        CircleAvatar(
          radius: 20.0,
          backgroundColor: ColorPalette.facebookBlue,
          child: CircleAvatar(
            radius: hasBorder ? 17.0 : 20.0,
            backgroundColor: Colors.grey[200],
            backgroundImage: CachedNetworkImageProvider(imageUrl),
          ),
        ),
        isActive
            ? Positioned(
                bottom: 4,
                right: 0.0,
                child: Container(
                  width: 14.0,
                  height: 14.0,
                  decoration: BoxDecoration(
                      color: ColorPalette.online,
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 1.5,
                        color: Colors.white,
                      )),
                ),
              )
            : const SizedBox.shrink()
      ],
    );
  }
}
