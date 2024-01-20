import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widget/all_expensess_item_listview.dart';
import 'allexpensess_row.dart';

class AllExpensess extends StatelessWidget {
  const AllExpensess({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
        ),
        child: const Column(
          children: [
            AllExpensessRow(),
            SizedBox(height: 16),
            AllExpensessItemListView()
          ],
        ),
      ),
    );
  }
}
