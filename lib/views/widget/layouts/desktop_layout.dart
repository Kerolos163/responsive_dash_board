import 'package:flutter/material.dart';

import '../all_expensess.dart';
import '../custom_drawer.dart';
import '../quick_invoice.dart';

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
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 20),
                AllExpensess(),
                SizedBox(height: 24),
                QuickInvoice(),
                SizedBox(height: 20),
              ],
            ),
          ),
        )
      ],
    );
  }
}
