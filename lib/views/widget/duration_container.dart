import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../utils/app_color.dart';
import '../../utils/app_image.dart';
import '../../utils/app_styles.dart';

class DurationContainer extends StatelessWidget {
  const DurationContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColor.lightGrey2, width: 1.5),
      ),
      child: Row(
        children: [
          const Text(
            "Monthly",
            style: AppStyles.styleMedium16,
          ),
          const SizedBox(
            width: 16,
          ),
          SvgPicture.asset(Assets.imagesArrowDown)
        ],
      ),
    );
  }
}
