
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widget/allexpensess_and_quick_in_voice.dart';
import 'package:responsive_dash_board/views/widget/my_card_income_sections.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpensessAndQuickInVoice(),
          MyCardIncomeSection(),
        ],
      ),
    );
  }
}