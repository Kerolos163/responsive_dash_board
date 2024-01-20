import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/utils/app_color.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class ContainerInfo extends StatelessWidget {
  const ContainerInfo(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.img});
  final String img;
  final String title;
  final String subTitle;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColor.lightGrey,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 0,
      child: ListTile(
        leading: SvgPicture.asset(img),
        title: Text(
          title,
          style: AppStyles.styleSemiBold16,
        ),
        subtitle: Text(
          subTitle,
          style: AppStyles.styleRegular12,
        ),
      ),
    );
  }
}
