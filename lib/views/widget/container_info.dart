import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../model/container_info_model.dart';
import '../../utils/app_color.dart';
import '../../utils/app_styles.dart';

class ContainerInfo extends StatelessWidget {
  const ContainerInfo({
    super.key,
    required this.model,
  });
  final ContainerInfoModel model;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColor.lightGrey,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 0,
      child: Center(
        child: ListTile(
          leading: SvgPicture.asset(model.img),
          title: Text(
            model.title,
            style: AppStyles.styleSemiBold16(context),
          ),
          subtitle: Text(
            model.subTitle,
            style: AppStyles.styleRegular12(context),
          ),
        ),
      ),
    );
  }
}
