import 'package:flutter/material.dart';
import '../../utils/app_styles.dart';
import 'duration_container.dart';

class AllExpensessRow extends StatelessWidget {
  const AllExpensessRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "All Expenses",
          style: AppStyles.styleSemiBold20,
        ),
        DurationContainer()
      ],
    );
  }
}
