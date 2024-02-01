import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widget/income_section_body.dart';

import '../../utils/app_styles.dart';
import 'custom_background_container.dart';
import 'duration_container.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    log(MediaQuery.sizeOf(context).width.toString());
    return CustomBackgroundContainer(
      child: Column(
        children: [
          incomeSectionHeader(),
          const AspectRatio(
            aspectRatio: 1.3,
            child: IncomeSectionBody(),
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
