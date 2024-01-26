import 'package:flutter/material.dart';

import '../../utils/app_color.dart';
import '../../utils/app_styles.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Quick Invoice",
          style: AppStyles.styleSemiBold20,
        ),
        CircleAvatar(
          radius: 30,
          backgroundColor: AppColor.lightGrey,
          child: Icon(Icons.add, color: AppColor.primary),
        )
      ],
    );
  }
}
