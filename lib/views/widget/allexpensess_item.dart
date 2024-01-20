import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/model/allexpensess_item_model.dart';
import 'package:responsive_dash_board/utils/app_color.dart';
import 'package:responsive_dash_board/utils/app_image.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class AllExpensessItem extends StatelessWidget {
  const AllExpensessItem(
      {super.key,
      required this.allExpensessItemModel,
      required this.isSelected});
  final AllExpensessItemModel allExpensessItemModel;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColor.lightGrey2, width: 1.5),
        color: isSelected ? AppColor.primary : AppColor.white,
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
            style: isSelected
                ? AppStyles.styleSemiBold16.copyWith(color: AppColor.white)
                : AppStyles.styleSemiBold16,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            allExpensessItemModel.date,
            style: isSelected
                ? AppStyles.styleRegular14.copyWith(color: AppColor.lightGrey)
                : AppStyles.styleRegular14,
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            allExpensessItemModel.price,
            style: isSelected
                ? AppStyles.styleSemiBold24.copyWith(color: AppColor.white)
                : AppStyles.styleSemiBold24,
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
          backgroundColor:
              isSelected ? AppColor.white.withOpacity(.1) : AppColor.lightGrey,
          radius: 30,
          child: SvgPicture.asset(
            allExpensessItemModel.img,
            colorFilter: isSelected
                ? const ColorFilter.mode(AppColor.white, BlendMode.srcIn)
                : null,
          ),
        ),
        Transform.rotate(
          angle: -1.571,
          child: SvgPicture.asset(Assets.imagesArrowDown),
        )
      ],
    );
  }
}
