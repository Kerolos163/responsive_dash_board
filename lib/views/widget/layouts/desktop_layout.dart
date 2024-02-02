import 'package:flutter/material.dart';

import '../allexpensess_and_quick_in_voice.dart';
import '../custom_drawer.dart';
import '../my_card_income_sections.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(flex: 3, child: CustomDrawer()),
        SizedBox(width: 24),
        Expanded(
          flex: 6,
          child: Padding(
            padding: EdgeInsets.only(top: 20),
            child: AllExpensessAndQuickInVoice(),
          ),
        ),
        SizedBox(width: 24),
        Expanded(flex: 4, child: MyCardIncomeSection()),
      ],
    );
  }
}
