import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_dash_board/cubit/cubit.dart';
import 'package:responsive_dash_board/cubit/state.dart';
import 'package:responsive_dash_board/model/drawer_item_model.dart';
import 'package:responsive_dash_board/utils/app_image.dart';
import 'package:responsive_dash_board/views/widget/drawer_item.dart';

class ListViewDrawerWadget extends StatelessWidget {
  const ListViewDrawerWadget({super.key});
  final List<DrawerItemModel> items = const [
    DrawerItemModel(txt: "Dashboard", img: Assets.imagesDashboard),
    DrawerItemModel(txt: "My Transaction", img: Assets.imagesMyTransaction),
    DrawerItemModel(txt: "Statistics", img: Assets.imagesStatistics),
    DrawerItemModel(txt: "Wallet Account", img: Assets.imagesWallet2),
    DrawerItemModel(txt: "My Investments", img: Assets.imagesMyInvestments),
  ];
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        return SliverList.builder(
          itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              AppCubit.get(context)
                  .changeSelectedItem(newItem: items[index].txt);
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 900),
                switchInCurve: Curves.bounceIn,
                switchOutCurve: Curves.bounceIn,
                child: selectItemMethod(context, index),
              ),
            ),
          ),
          itemCount: items.length,
        );
      },
    );
  }

  StatelessWidget selectItemMethod(BuildContext context, int index) {
    return AppCubit.get(context).selectedItem == items[index].txt
        ? SelectedItem(drawerItemModel: items[index])
        : UnSelectedDraweItem(drawerItemModel: items[index]);
  }
}
