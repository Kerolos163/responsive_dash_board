import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widget/custom_drawer.dart';
import 'package:responsive_dash_board/views/widget/layouts/mobile_layout.dart';

class TabletLayOut extends StatelessWidget {
  const TabletLayOut({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(flex: 1, child: CustomDrawer()),
        SizedBox(width: 24),
        Expanded(
          flex: 3,
          child: Padding(
            padding: EdgeInsets.only(top: 20),
            child: MobileLayout(),
          ),
        ),
        SizedBox(width: 24),
      ],
    );
  }
}
