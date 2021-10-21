import 'package:facebook_flutter/data/data.dart';
import 'package:facebook_flutter/models/models.dart';
import 'package:facebook_flutter/screens/widgets.dart';
import 'package:facebook_flutter/styles/color_palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverAppBar(
              systemOverlayStyle: SystemUiOverlayStyle(statusBarBrightness: Brightness.light),
              backgroundColor: Colors.white,
              title: Text(
                'facebook',
                style: TextStyle(
                  color: ColorPalette.facebookBlue,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: -1.2,
                ),
              ),
              centerTitle: false,
              floating: true,
              actions: [
                CircleButton(
                  iconData: Icons.search,
                  onPressed: () {},
                  iconSize: 30.0,
                ),
                CircleButton(
                  iconData: MdiIcons.facebookMessenger,
                  onPressed: () {},
                  iconSize: 30.0,
                )
              ],
            ),
            SliverToBoxAdapter(
              child: CreatePostContainer(currentUser: currentUser),
            ),
            SliverToBoxAdapter(
              child: Rooms(onlineUsers: onlineUsers),
            ),
            SliverToBoxAdapter(
              child: Stories(
                currentUser: currentUser,
                stories: stories,
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
                final Post post = posts[index];
                return PostContainer(post:post);
              }, childCount: posts.length),
            )
          ],
        ),
      ),
    );
  }
}
