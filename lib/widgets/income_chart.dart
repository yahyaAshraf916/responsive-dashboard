import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
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
          value: 40,
          color: Color(0xff208bc7),
          showTitle: false,
          radius: activeIndex == 0 ? 40 : 30,
        ),
        PieChartSectionData(
          value: 25,
          color: Color(0xff4EB7F2),
          showTitle: false,
          radius: activeIndex == 1 ? 40 : 30,
        ),
        PieChartSectionData(
          value: 20,
          color: Color(0xff064061),
          showTitle: false,
          radius: activeIndex == 2 ? 40 : 30,
        ),
        PieChartSectionData(
          value: 22,
          color: Color(0xffE2DECD),
          showTitle: false,
          radius: activeIndex == 3 ? 40 : 30,
        ),
      ],
    );
  }
}
