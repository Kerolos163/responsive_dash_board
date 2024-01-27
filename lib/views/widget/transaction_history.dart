import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_color.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/views/widget/transaction_history_listview.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(color: AppColor.lightGrey2, height: 40),
        tranasactionHeader(),
        const SizedBox(height: 20),
        Text(
          "13 April 2022",
          style: AppStyles.styleMedium16.copyWith(color: AppColor.grey),
        ),
        const SizedBox(height: 16),
        const TransactionHistoryListView()
      ],
    );
  }

  Row tranasactionHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Transaction History",
          style: AppStyles.styleSemiBold20.copyWith(color: AppColor.titleColor),
        ),
        Text(
          "See all",
          style: AppStyles.styleMedium16.copyWith(color: AppColor.primary),
        ),
      ],
    );
  }
}
