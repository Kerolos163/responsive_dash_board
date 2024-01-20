import 'package:flutter/material.dart';
import 'package:responsive_dash_board/model/allexpensess_item_model.dart';
import 'package:responsive_dash_board/utils/app_image.dart';
import 'package:responsive_dash_board/views/widget/allexpensess_item.dart';

class AllExpensessItemListView extends StatelessWidget {
  const AllExpensessItemListView({super.key});

  final List<AllExpensessItemModel> items = const [
    AllExpensessItemModel(
      img: Assets.imagesBalance,
      title: "Balance",
      date: "April 2022",
      price: "\$20,129",
    ),
    AllExpensessItemModel(
      img: Assets.imagesIncome,
      title: "Income",
      date: "April 2022",
      price: "\$20,129",
    ),
    AllExpensessItemModel(
      img: Assets.imagesExpenses,
      title: "Expenses",
      date: "April 2022",
      price: "\$20,129",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      // children: items.map((item) =>Expanded(child: AllExpensessItem(allExpensessItemModel: item))).toList(),
      children: items
          .asMap()
          .entries
          .map(
            (item) => Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: item.key != 0 ? 12 : 0),
                child: AllExpensessItem(allExpensessItemModel: item.value),
              ),
            ),
          )
          .toList(),
    );
  }
}
