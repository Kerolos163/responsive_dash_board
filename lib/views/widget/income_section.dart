import 'package:flutter/material.dart';

import '../../utils/app_styles.dart';
import 'custom_background_container.dart';
import 'duration_container.dart';
import 'inchome_chart.dart';
import 'income_details.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        children: [
          incomeSectionHeader(),
          const AspectRatio(
            aspectRatio: 1,
            child: Row(
              children: [
                Expanded(child: IncomeChartWidget()),
                Expanded(child: IncomeDetails()),
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
