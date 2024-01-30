import 'package:flutter/material.dart';

import '../../model/transaction_model.dart';
import 'transaction_item.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});
  static const List<TransactionModel> items = [
    TransactionModel(
      title: "Cash Withdrawal",
      date: "13 Apr, 2022",
      amount: r"$20,129",
      isWithDrawal: true,
    ),
    TransactionModel(
      title: "Landing Page project",
      date: "13 Apr, 2022 at 3:30 PM",
      amount: r"$20,129",
      isWithDrawal: false,
    ),
    TransactionModel(
      title: "Juni Mobile App project",
      date: "13 Apr, 2022 at 3:30 PM",
      amount: r"$20,129",
      isWithDrawal: false,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.only(bottom: 6),
        child: TransactionItem(
          model: items[index],
        ),
      ),
      itemCount: items.length,
    );
  }
}
