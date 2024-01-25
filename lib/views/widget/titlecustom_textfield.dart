import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/views/widget/custom_textfield.dart';

class TitleCustomTextField extends StatelessWidget {
  const TitleCustomTextField(
      {super.key, required this.title, required this.hint});
  final String title, hint;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppStyles.styleMedium16,
        ),
        const SizedBox(height: 12),
        CustomTextField(hint: hint)
      ],
    );
  }
}