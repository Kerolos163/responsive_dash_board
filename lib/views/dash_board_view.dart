import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widget/custom_drawer.dart';
import 'package:responsive_dash_board/views/widget/layouts/mobile_layout.dart';
import 'package:responsive_dash_board/views/widget/layouts/tablet_layout_widget.dart';

import '../utils/app_color.dart';
import 'widget/layouts/adaptive_layout_widget.dart';
import 'widget/layouts/desktop_layout.dart';

class DashBoardView extends StatefulWidget {
  const DashBoardView({super.key});

  @override
  State<DashBoardView> createState() => _DashBoardViewState();
}

class _DashBoardViewState extends State<DashBoardView> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: MediaQuery.sizeOf(context).width < 800
          ? AppBar(
              backgroundColor: AppColor.primary,
              elevation: 0,
              leading: IconButton(
                onPressed: () {
                  _scaffoldKey.currentState!.openDrawer();
                },
                icon: const Icon(
                  Icons.menu,
                  color: AppColor.white,
                ),
              ),
            )
          : null,
      backgroundColor: AppColor.lightGrey3,
      drawer: MediaQuery.sizeOf(context).width < 800
          ? SizedBox(
              width: MediaQuery.sizeOf(context).width * .7,
              child: const CustomDrawer(),
            )
          : null,
      body: AdaptiveLayout(
        mobileLayout: (context) => const MobileLayout(),
        tabletLayout: (context) => const TabletLayOut(),
        desktopLayout: (context) => const DesktopLayout(),
      ),
    );
  }
}
