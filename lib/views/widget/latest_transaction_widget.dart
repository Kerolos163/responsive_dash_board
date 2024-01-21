import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/views/widget/latest_transactionLlstview.dart';

class LatestTransactionWidget extends StatelessWidget {
  const LatestTransactionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Latest Transaction",
          style: AppStyles.styleMedium16,
        ),
        SizedBox(height: 12),
        LatestTransactionListView()
      ],
    );
  }
}
