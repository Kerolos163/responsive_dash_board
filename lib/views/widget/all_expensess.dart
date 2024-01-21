import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widget/all_expensess_item_listview.dart';
import 'package:responsive_dash_board/views/widget/custom_background_container.dart';
import 'allexpensess_row.dart';

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
