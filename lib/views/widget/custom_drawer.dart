import 'package:flutter/material.dart';

import '../../model/container_info_model.dart';
import '../../model/drawer_item_model.dart';
import '../../utils/app_image.dart';
import 'container_info.dart';
import 'drawer_item.dart';
import 'drawer_items.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: ContainerInfo(
              model: ContainerInfoModel(
                img: Assets.imagesAvatar3,
                title: "Lekan Okeowo",
                subTitle: "demo@gmail.com",
              ),
            ),
          ),
          ListViewDrawerWadget(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Spacer(),
                UnSelectedDraweItem(
                  drawerItemModel: DrawerItemModel(
                    img: Assets.imagesSetting,
                    txt: "Setting system",
                  ),
                ),
                UnSelectedDraweItem(
                  drawerItemModel: DrawerItemModel(
                    img: Assets.imagesLogout,
                    txt: "Logout account",
                  ),
                ),
                SizedBox(height: 48)
              ],
            ),
          )
        ],
      ),
    );
  }
}
