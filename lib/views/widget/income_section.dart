import 'dart:developer';

import 'package:flutter/material.dart';

import '../../utils/app_styles.dart';
import 'custom_background_container.dart';
import 'duration_container.dart';
import 'income_section_body.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    log(MediaQuery.sizeOf(context).width.toString());
    return CustomBackgroundContainer(
      child: Column(
        children: [
          incomeSectionHeader(context),
          const AspectRatio(
            aspectRatio: 1.2,
            child: IncomeSectionBody(),
          )
        ],
      ),
    );
  }

  Row incomeSectionHeader(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Income",
          style: AppStyles.styleSemiBold20(context),
        ),
        const DurationContainer()
      ],
    );
  }
}
