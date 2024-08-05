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
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(
        PieChartData(
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
              showTitle: false,
              radius: activeIndex == 0 ? 40 : 30,
              color: const Color(0xff208CC8),
              value: 40,
            ),
            PieChartSectionData(
              showTitle: false,
              radius: activeIndex == 1 ? 40 : 30,
              color: const Color(0XFF4EB7F2),
              value: 25,
            ),
            PieChartSectionData(
              showTitle: false,
              radius: activeIndex == 2 ? 40 : 30,
              color: const Color(0xff064061),
              value: 20,
            ),
            PieChartSectionData(
              showTitle: false,
              radius: activeIndex == 3 ? 40 : 30,
              color: const Color(0xFFE2DECD),
              value: 22,
            ),
          ],
        ),
      ),
    );
  }
}
