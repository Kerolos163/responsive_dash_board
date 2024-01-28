import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/views/widget/custom_background_container.dart';
import 'package:responsive_dash_board/views/widget/duration_container.dart';
import 'package:responsive_dash_board/views/widget/inchome_chart.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        children: [
          incomeSectionHeader(),
          const SizedBox(
            height: 300,
            child: Row(
              children: [
                Expanded(child: IncomeChartWidget()),
              ],
            ),
          )
        ],
      ),
    );
  }

  Row incomeSectionHeader() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Income",
          style: AppStyles.styleSemiBold20,
        ),
        DurationContainer()
      ],
    );
  }
}
