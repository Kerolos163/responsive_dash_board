
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_color.dart';

class IncomeChartWidget extends StatefulWidget {
  const IncomeChartWidget({super.key});

  @override
  State<IncomeChartWidget> createState() => _IncomeChartWidgetState();
}

class _IncomeChartWidgetState extends State<IncomeChartWidget> {
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
          radius: activeIndex == 0 ? 60 : 50,
          showTitle: false,
          value: 40,
          color: AppColor.colorChart1,
        ),
        PieChartSectionData(
          radius: activeIndex == 1 ? 60 : 50,
          showTitle: false,
          value: 25,
          color: AppColor.primary,
        ),
        PieChartSectionData(
          radius: activeIndex == 2 ? 60 : 50,
          showTitle: false,
          value: 20,
          color: AppColor.titleColor,
        ),
        PieChartSectionData(
          radius: activeIndex == 3 ? 60 : 50,
          showTitle: false,
          value: 40,
          color: AppColor.colorChart2,
        ),
      ],
    );
  }
}
