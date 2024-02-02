import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import '../../utils/app_styles.dart';

import '../../utils/app_color.dart';

class DetailsIncomeChartWidget extends StatefulWidget {
  const DetailsIncomeChartWidget({super.key});

  @override
  State<DetailsIncomeChartWidget> createState() =>
      _DetailsIncomeChartWidgetState();
}

class _DetailsIncomeChartWidgetState extends State<DetailsIncomeChartWidget> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return PieChart(getChartData());
  }

  PieChartData getChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (p0, pieTouchResponse) {
          activeIndex =
              pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {});
        },
      ),
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 0 ? 1.5 : null,
          title: activeIndex == 0 ? "Design service" : "40%",
          radius: activeIndex == 0 ? 60 : 50,
          titleStyle: AppStyles.styleMedium16(context).copyWith(
            color: activeIndex == 0 ? AppColor.titleColor : AppColor.white,
            fontSize: activeIndex == 0 ? 11.5 : null,
          ),
          value: 40,
          color: AppColor.colorChart1,
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 1 ? 1.7 : null,
          title: activeIndex == 1 ? "Design product" : "25%",
          radius: activeIndex == 1 ? 60 : 50,
          titleStyle: AppStyles.styleMedium16(context).copyWith(
            color: activeIndex == 1 ? AppColor.titleColor : AppColor.white,
            fontSize: activeIndex == 1 ? 11.5 : null,
          ),
          value: 25,
          color: AppColor.primary,
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 2 ? 1.7 : null,
          title: activeIndex == 2 ? "Product royalti" : "20%",
          radius: activeIndex == 2 ? 60 : 50,
          titleStyle: AppStyles.styleMedium16(context).copyWith(
            color: activeIndex == 2 ? AppColor.titleColor : AppColor.white,
            fontSize: activeIndex == 2 ? 11.5 : null,
          ),
          value: 20,
          color: AppColor.titleColor,
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 3 ? 1.4 : null,
          title: activeIndex == 3 ? "Other" : "40%",
          radius: activeIndex == 3 ? 60 : 50,
          titleStyle: AppStyles.styleMedium16(context).copyWith(
            color: activeIndex == 3 ? AppColor.titleColor : AppColor.white,
            fontSize: activeIndex == 3 ? 11.5 : null,
          ),
          value: 40,
          color: AppColor.colorChart2,
        ),
      ],
    );
  }
}
