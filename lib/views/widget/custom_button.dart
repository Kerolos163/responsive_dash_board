import 'package:flutter/material.dart';

import '../../utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key, required this.label, this.fontColor, required this.color});
  final String label;
  final Color? fontColor;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            elevation: 0,
            backgroundColor: color,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12))),
        onPressed: () {},
        child: Text(
          label,
          style: AppStyles.styleSemiBold18(context).copyWith(color: fontColor),
        ),
      ),
    );
  }
}
