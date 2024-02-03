import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubit/cubit.dart';
import '../../cubit/state.dart';
import '../../model/allexpensess_item_model.dart';
import '../../utils/app_image.dart';
import 'allexpensess_item.dart';

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
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // children: items.map((item) =>Expanded(child: AllExpensessItem(allExpensessItemModel: item))).toList(),
          children: items
              .asMap()
              .entries
              .map(
                (item) => Expanded(
                  child: GestureDetector(
                    onTap: () {
                      AppCubit.get(context).changeSelectedAllExpensessItem(
                        newItem: item.value.title,
                      );
                    },
                    child: AllExpensessItem(
                      isSelected: item.value.title ==
                          AppCubit.get(context).selectedAllExpensessItem,
                      allExpensessItemModel: item.value,
                    ),
                  ),
                ),
              )
              .toList(),
        );
      },
    );
  }
}
