import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../model/allexpensess_item_model.dart';
import '../../utils/app_color.dart';
import '../../utils/app_image.dart';
import '../../utils/app_styles.dart';

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
        border: isSelected
            ? null
            : Border.all(color: AppColor.lightGrey2, width: 1.5),
        color: isSelected ? AppColor.primary : AppColor.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          header(),
          const SizedBox(
            height: 34,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            alignment: Alignment.bottomLeft,
            child: Text(
              allExpensessItemModel.title,
              style: isSelected
                  ? AppStyles.styleSemiBold16(context)
                      .copyWith(color: AppColor.white)
                  : AppStyles.styleSemiBold16(context),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            alignment: Alignment.bottomLeft,
            child: Text(
              allExpensessItemModel.date,
              style: isSelected
                  ? AppStyles.styleRegular14(context)
                      .copyWith(color: AppColor.lightGrey)
                  : AppStyles.styleRegular14(context),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            alignment: Alignment.bottomLeft,
            child: Text(
              allExpensessItemModel.price,
              style: isSelected
                  ? AppStyles.styleSemiBold24(context)
                      .copyWith(color: AppColor.white)
                  : AppStyles.styleSemiBold24(context),
            ),
          ),
        ],
      ),
    );
  }

  Row header() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 60),
            child: AspectRatio(
              aspectRatio: 1,
              child: CircleAvatar(
                backgroundColor: isSelected
                    ? AppColor.white.withOpacity(.1)
                    : AppColor.lightGrey,
                child: SvgPicture.asset(
                  allExpensessItemModel.img,
                  colorFilter: isSelected
                      ? const ColorFilter.mode(AppColor.white, BlendMode.srcIn)
                      : null,
                ),
              ),
            ),
          ),
        ),
        Transform.rotate(
          angle: -1.571,
          child: SvgPicture.asset(
            Assets.imagesArrowDown,
            colorFilter: isSelected
                ? const ColorFilter.mode(AppColor.white, BlendMode.srcIn)
                : null,
          ),
        )
      ],
    );
  }
}
