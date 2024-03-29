import 'package:flutter/material.dart';

import '../../model/income_item_model.dart';
import '../../utils/app_color.dart';
import '../../utils/app_styles.dart';

class IncomeDetailsItem extends StatelessWidget {
  final IncomeItemModel incomeItemModel;
  const IncomeDetailsItem({super.key, required this.incomeItemModel});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(backgroundColor: incomeItemModel.color, radius: 6),
      title:
          Text(incomeItemModel.title, style: AppStyles.styleRegular16(context)),
      trailing: Text(
        incomeItemModel.value,
        style: AppStyles.styleMedium16(context)
            .copyWith(color: AppColor.colorChart1),
      ),
    );
  }
}
