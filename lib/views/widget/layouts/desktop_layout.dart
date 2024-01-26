import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widget/allexpensess_and_quick_in_voice.dart';

import 'package:responsive_dash_board/views/widget/my_card_section.dart';
import '../custom_drawer.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(flex: 2, child: CustomDrawer()),
        SizedBox(
          width: 24,
        ),
        Expanded(
          flex: 6,
          child: AllExpensessAndQuickInVoice(),
        ),
        SizedBox(width: 24),
        Expanded(flex: 3, child: MyCardSection()),
      ],
    );
  }
}
