import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_image.dart';
import 'package:responsive_dash_board/views/widget/container_info.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const Column(
        children: [
          ContainerInfo(
            img: Assets.imagesAvatar3,
            title: "Lekan Okeowo",
            subTitle: "demo@gmail.com",
          ),
        ],
      ),
    );
  }
}