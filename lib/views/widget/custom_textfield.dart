import 'package:flutter/material.dart';

import '../../utils/app_color.dart';
import '../../utils/app_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint});
  final String hint;
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: AppColor.primary,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle:
            AppStyles.styleRegular16(context).copyWith(color: AppColor.grey),
        fillColor: AppColor.lightGrey,
        filled: true,
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide.none,
    );
  }
}
