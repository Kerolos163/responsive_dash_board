import 'package:flutter/material.dart';

import 'all_expensess.dart';
import 'quick_invoice.dart';

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
