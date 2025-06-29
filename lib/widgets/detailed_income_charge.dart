import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class DetailedIncomeCharge extends StatefulWidget {
  const DetailedIncomeCharge({super.key});

  @override
  State<DetailedIncomeCharge> createState() => _DetailedIncomeChargeState();
}

class _DetailedIncomeChargeState extends State<DetailedIncomeCharge> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1, child: PieChart(getChartData()));
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
          value: 40,
          color: Color(0xff208bc7),
          titleStyle: AppStyles.styleMedium16(
            context,
          ).copyWith(color: activeIndex == 0 ? null : Colors.white),
          radius: activeIndex == 0 ? 40 : 30,
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 1 ? 2.3 : null,
          title: activeIndex == 1 ? "Design product" : "25%",
          value: 25,
          color: Color(0xff4EB7F2),
          titleStyle: AppStyles.styleMedium16(
            context,
          ).copyWith(color: activeIndex == 1 ? null : Colors.white),
          radius: activeIndex == 1 ? 40 : 30,
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 2 ? 1.5 : null,
          title: activeIndex == 2 ? "Product royalti" : "20%",
          value: 20,
          color: Color(0xff064061),
          titleStyle: AppStyles.styleMedium16(
            context,
          ).copyWith(color: activeIndex == 2 ? null : Colors.white),
          radius: activeIndex == 2 ? 40 : 30,
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 3 ? 1.5 : null,
          title: activeIndex == 3 ? "Other" : "22%",
          value: 22,
          color: Color(0xffE2DECD),
          titleStyle: AppStyles.styleMedium16(
            context,
          ).copyWith(color: activeIndex == 3 ? null : Colors.white),
          radius: activeIndex == 3 ? 40 : 30,
        ),
      ],
    );
  }
}
