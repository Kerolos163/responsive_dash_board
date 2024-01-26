import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'my_card_widget.dart';

class MyCardPageView extends StatelessWidget {
  const MyCardPageView({super.key, this.onPageChanged});
  final void Function(int)? onPageChanged;
  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(
      scrollDirection: Axis.horizontal,
      onPageChanged: onPageChanged,
      children: List.generate(
        3,
        (index) => const MyCard(),
      ),
    );
  }
}
