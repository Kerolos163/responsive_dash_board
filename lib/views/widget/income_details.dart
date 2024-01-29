import 'package:flutter/material.dart';
import 'package:responsive_dash_board/model/income_item_model.dart';
import 'package:responsive_dash_board/utils/app_color.dart';
import 'package:responsive_dash_board/views/widget/income_details_item.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});
  static const List<IncomeItemModel> items = [
    IncomeItemModel(
        color: AppColor.colorChart1, title: "Design service", value: "40%"),
    IncomeItemModel(
        color: AppColor.primary, title: "Design product", value: "25%"),
    IncomeItemModel(
        color: AppColor.titleColor, title: "Product royalti", value: "20%"),
    IncomeItemModel(color: AppColor.colorChart2, title: "Other", value: "22%"),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemBuilder: (context, index) => IncomeDetailsItem(
        incomeItemModel: items[index],
      ),
      itemCount: items.length,
    );
  }
}
