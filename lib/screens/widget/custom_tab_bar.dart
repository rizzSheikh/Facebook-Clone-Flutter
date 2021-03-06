import 'package:facebook_flutter/styles/color_palette.dart';
import 'package:flutter/material.dart';

class CustomTabBar extends StatelessWidget {
  final List<IconData> icons;
  final int selectedIndex;
  final Function(int) onTap;

  final double? iconSize;

  const CustomTabBar({Key? key, required this.icons, required this.selectedIndex, required this.onTap, this.iconSize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBar(
      indicatorPadding: EdgeInsets.zero,
      indicator: BoxDecoration(border: Border(top: BorderSide(color: ColorPalette.facebookBlue, width: 3.0))),
      tabs: icons
          .asMap()
          .map((i, e) => MapEntry(
                i,
                Tab(
                  icon: Icon(
                    e,
                    color: i == selectedIndex ? ColorPalette.facebookBlue : Colors.black45,
                    size: iconSize ?? 28.0,
                  ),
                ),
              ))
          .values
          .toList(),
      onTap: onTap,
    );
  }
}
