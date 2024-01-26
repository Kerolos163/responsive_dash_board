import 'package:flutter/material.dart';

import '../../utils/app_styles.dart';
import 'latest_transactionlistview.dart';

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
