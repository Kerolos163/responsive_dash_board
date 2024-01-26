import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_dash_board/cubit/cubit.dart';
import 'package:responsive_dash_board/cubit/state.dart';
import 'package:responsive_dash_board/utils/app_color.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/views/widget/cutom_dots_indecator.dart';
import 'package:responsive_dash_board/views/widget/my_card_page_view.dart';

class MyCardSection extends StatelessWidget {
  const MyCardSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Container(
        padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
        decoration: BoxDecoration(
          color: AppColor.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: BlocBuilder<AppCubit, AppState>(
          builder: (context, state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("My card", style: AppStyles.styleSemiBold20),
                const SizedBox(height: 20),
                MyCardPageView(
                  onPageChanged: (value) => AppCubit.get(context)
                      .changeCurrentPageView(newPageView: value),
                ),
                const SizedBox(height: 19),
                CustomDotsIndecator(
                  currentPageView: AppCubit.get(context).currentPageView,
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
