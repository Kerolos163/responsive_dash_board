import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widget/quick_invoice.dart';
import '../all_expensess.dart';
import '../custom_drawer.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 2,
          child: Column(
            children: [
              SizedBox(height: 20),
              AllExpensess(),
              SizedBox(height: 24),
              Expanded(child: QuickInvoice())
            ],
          ),
        )
      ],
    );
  }
}
