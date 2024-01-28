import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widget/income_section.dart';
import 'package:responsive_dash_board/views/widget/my_card_section.dart';

class MyCardIncomeSection extends StatelessWidget {
  const MyCardIncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(right: 24),
        child: Column(
          children: [
            MyCardSection(),
            SizedBox(height: 24),
            IncomeSection(),
          ],
        ),
      ),
    );
  }
}
