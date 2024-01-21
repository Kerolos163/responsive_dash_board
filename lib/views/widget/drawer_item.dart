import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../model/drawer_item_model.dart';
import '../../utils/app_styles.dart';

class UnSelectedDraweItem extends StatelessWidget {
  const UnSelectedDraweItem({super.key, required this.drawerItemModel});
  final DrawerItemModel drawerItemModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItemModel.img),
      title: Text(
        drawerItemModel.txt,
        style: AppStyles.styleSemiBold16.copyWith(
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}

class SelectedItem extends StatelessWidget {
  const SelectedItem({super.key, required this.drawerItemModel});
  final DrawerItemModel drawerItemModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItemModel.img),
      title: Text(drawerItemModel.txt, style: AppStyles.styleBold16),
      trailing: Container(
        width: 3.267604351043701,
        decoration: const BoxDecoration(
          color: Color(0xff4eb7f2),
        ),
      ),
    );
  }
}
