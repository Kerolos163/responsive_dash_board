import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/model/allexpensess_item_model.dart';
import 'package:responsive_dash_board/utils/app_color.dart';
import 'package:responsive_dash_board/utils/app_image.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class AllExpensessItem extends StatelessWidget {
  const AllExpensessItem({super.key, required this.allExpensessItemModel});
  final AllExpensessItemModel allExpensessItemModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColor.lightGrey2, width: 1.5),
        color: AppColor.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          header(),
          const SizedBox(
            height: 34,
          ),
          Text(
            allExpensessItemModel.title,
            style: AppStyles.styleSemiBold16,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            allExpensessItemModel.date,
            style: AppStyles.styleRegular14,
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            allExpensessItemModel.price,
            style: AppStyles.styleSemiBold24,
          ),
        ],
      ),
    );
  }

  Row header() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
          backgroundColor: AppColor.lightGrey,
          radius: 30,
          child: SvgPicture.asset(allExpensessItemModel.img),
        ),
        Transform.rotate(
          angle: -1.571,
          child: SvgPicture.asset(Assets.imagesArrowDown),
        )
      ],
    );
  }
}
