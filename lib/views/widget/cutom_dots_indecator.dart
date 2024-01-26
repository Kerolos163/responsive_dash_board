import 'package:flutter/material.dart';

import 'custom_dot_indicator.dart';

class CustomDotsIndecator extends StatelessWidget {
  const CustomDotsIndecator({super.key, required this.currentPageView});
final int currentPageView;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        3,
        (index) =>  Padding(
          padding:const EdgeInsets.only(right: 4),
          child: CustomDotIndicator(isActive: currentPageView==index),
        ),
      ),
    );
  }
}
