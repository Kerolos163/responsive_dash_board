import 'package:flutter/material.dart';
import 'package:responsive_dash_board/model/drawer_item_model.dart';
import 'package:responsive_dash_board/utils/app_image.dart';
import 'package:responsive_dash_board/views/widget/container_info.dart';
import 'package:responsive_dash_board/views/widget/drawer_item.dart';
import 'package:responsive_dash_board/views/widget/drawer_items.dart';

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
              img: Assets.imagesAvatar3,
              title: "Lekan Okeowo",
              subTitle: "demo@gmail.com",
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
