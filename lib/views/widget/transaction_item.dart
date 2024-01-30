import 'package:flutter/material.dart';

import '../../model/transaction_model.dart';
import '../../utils/app_color.dart';
import '../../utils/app_styles.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({super.key, required this.model});
  final TransactionModel model;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: AppColor.lightGrey,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        title: Text(
          model.title,
          style: AppStyles.styleSemiBold16.copyWith(color: AppColor.titleColor),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 4),
          child: Text(
            model.date,
            style: AppStyles.styleRegular16.copyWith(color: AppColor.grey),
          ),
        ),
        trailing: Text(
          model.amount,
          style: AppStyles.styleSemiBold20.copyWith(
            color: model.isWithDrawal ? AppColor.redColor : AppColor.greenColor,
          ),
        ),
      ),
    );
  }
}
