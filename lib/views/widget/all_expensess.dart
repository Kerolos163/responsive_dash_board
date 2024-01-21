import 'package:flutter/material.dart';

import 'all_expensess_item_listview.dart';
import 'allexpensess_row.dart';
import 'custom_background_container.dart';

class AllExpensess extends StatelessWidget {
  const AllExpensess({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          AllExpensessRow(),
          SizedBox(height: 16),
          AllExpensessItemListView()
        ],
      ),
    );
  }
}
