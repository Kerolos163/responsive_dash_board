import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widget/titlecustom_textfield.dart';

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
      ],
    );
  }
}
