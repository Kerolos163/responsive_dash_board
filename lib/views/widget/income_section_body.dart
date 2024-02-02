import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/size_config.dart';
import 'package:responsive_dash_board/views/widget/details_income_chart.dart';
import 'package:responsive_dash_board/views/widget/inchome_chart.dart';

import 'income_details.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    return width < 1498.5 && width > SizeConfig.desktop
        ? const Padding(
            padding: EdgeInsets.all(24),
            child: DetailsIncomeChartWidget(),
          )
        : const Row(
            children: [
              Expanded(child: IncomeChartWidget()),
              Expanded(child: IncomeDetails()),
            ],
          );
  }
}
