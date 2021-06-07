import 'package:flutter/material.dart';
import 'package:myshop/View/IG_Home/Home_Post.dart';
import 'package:myshop/View/IG_Home/Home_SnapShot.dart';
import 'package:myshop/utils/constants.dart';

import 'Home_AppBar.dart';

class IG_Home_Page extends StatefulWidget {
  @override
  _IG_Home_PageState createState() => _IG_Home_PageState();
}

class _IG_Home_PageState extends State<IG_Home_Page> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          // return DesktopNavbar();
          return MobileNavbar();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth <= 1200) {
          return MobileNavbar();
        } else {
          return MobileNavbar();
        }
      },
    );
  }
}

class MobileNavbar extends StatefulWidget {
  @override
  _MobileNavbarState createState() => _MobileNavbarState();
}

class _MobileNavbarState extends State<MobileNavbar> {

  Future _refreshData() async {
    await Future.delayed(Duration(seconds: 1));
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: _refreshData,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Home_AppBar(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Home_SnapShot(),
                  Divider(
                    color: COLOR_GREY,
                    thickness: 0.3,
                  ),
                  Home_Post(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
