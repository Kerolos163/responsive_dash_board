import 'package:flutter/material.dart';
import '../../utils/app_color.dart';
import 'custom_button.dart';
import 'titlecustom_textfield.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TitleCustomTextField(
                title: "Customer name",
                hint: "Type customer name",
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: TitleCustomTextField(
                title: "Customer Email",
                hint: "Type customer email",
              ),
            ),
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Expanded(
              child: TitleCustomTextField(
                title: "Item name",
                hint: "Type customer name",
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: TitleCustomTextField(
                title: "Item mount",
                hint: "USD",
              ),
            ),
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Expanded(
              child: CustomButton(
                label: "Add more details",
                color: AppColor.white,
                fontColor: AppColor.primary,
              ),
            ),
            SizedBox(width: 24),
            Expanded(
              child: CustomButton(
                label: "Send Money",
                color: AppColor.primary,
              ),
            ),
          ],
        )
      ],
    );
  }
}
