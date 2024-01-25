import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_color.dart';
import 'package:responsive_dash_board/views/widget/quick_invoice_form.dart';
import 'custom_background_container.dart';
import 'latest_transaction_widget.dart';
import 'quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          SizedBox(height: 24),
          LatestTransactionWidget(),
          Divider(height: 48, color: AppColor.lightGrey2),
          QuickInvoiceForm()
        ],
      ),
    );
  }
}
