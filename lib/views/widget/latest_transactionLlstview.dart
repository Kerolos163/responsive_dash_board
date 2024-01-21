import 'package:flutter/material.dart';
import 'package:responsive_dash_board/model/container_info_model.dart';
import 'package:responsive_dash_board/utils/app_image.dart';
import 'package:responsive_dash_board/views/widget/container_info.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});
  final List<ContainerInfoModel> items = const [
    ContainerInfoModel(
      img: Assets.imagesAvatar1,
      title: "Madrani Andi",
      subTitle: "Madraniadi20@gmail",
    ),
    ContainerInfoModel(
      img: Assets.imagesAvatar2,
      title: "Josua Nunito",
      subTitle: "Josh Nunito@gmail.com",
    ),
    ContainerInfoModel(
      img: Assets.imagesAvatar1,
      title: "Madrani",
      subTitle: "Madraniadi20@gmail",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items
            .map((item) => IntrinsicWidth(
                  child: ContainerInfo(
                    model: item,
                  ),
                ))
            .toList(),
      ),
    );
  }
}
