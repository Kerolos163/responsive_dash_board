import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widget/all_expensess.dart';
import 'package:responsive_dash_board/views/widget/quick_invoice.dart';

class AllExpensessAndQuickInVoice extends StatelessWidget {
  const AllExpensessAndQuickInVoice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 20),
          AllExpensess(),
          SizedBox(height: 24),
          QuickInvoice(),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
