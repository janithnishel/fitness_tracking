import 'package:app6/constant/colors.dart';
import 'package:app6/constant/responsive.dart';
import 'package:app6/data/linechart_data_set.dart';
import 'package:app6/widgets/custom_box.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineChartCard extends StatelessWidget {
  const LineChartCard({super.key});

  @override
  Widget build(BuildContext context) {

    final isMobile = Responsive.isMobile(context);
    final data = LineChartDataSet();
    return CustomBox(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Steps Overview",
              style: TextStyle(
                color: fgreyColor,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            AspectRatio(
              aspectRatio:isMobile?1:16/7,
              child: LineChart(
                LineChartData(
                lineTouchData:LineTouchData(touchTooltipData: LineTouchTooltipData(tooltipBgColor:flineColor)) ,
                  titlesData: FlTitlesData(
                    rightTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: false,
                      ),
                    ),
                    topTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: false,
                      ),
                    ),
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        reservedSize: 40,
                        showTitles: true,
                        getTitlesWidget: (value, meta) {
                          return data.bottomTitle[value.toInt()] != null
                              ? SideTitleWidget(
                                  space: 20,
                                  axisSide: meta.axisSide,
                                  child: Text(
                                    data.bottomTitle[value.toInt()].toString(),
                                    style: const TextStyle(
                                      color: fgreyColor,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                )
                              : const SizedBox();
                        },
                      ),
                    ),
                    leftTitles: AxisTitles(
                      sideTitles: SideTitles(
                        interval: 1,
                        reservedSize: 50,
                        showTitles: true,
                        getTitlesWidget: (
                          value,
                          meta,
                        ) {
                          return data.leftTitle[value.toInt()] != null
                              ? SideTitleWidget(
                                  space: 20,
                                  axisSide: meta.axisSide,
                                  child: Text(
                                    data.leftTitle[value.toInt()].toString(),
                                    style: const TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: fgreyColor,
                                    ),
                                  ),
                                )
                              : const SizedBox();
                        },
                      ),
                    ),
                  ),
                  borderData: FlBorderData(
                    show: false,
                  ),
                  lineBarsData: [
                    LineChartBarData(
                      color: fsectionColor,
                      dotData: FlDotData(
                        show: false,
                      ),
                      barWidth: 2.5,
                      belowBarData: BarAreaData(
                        gradient: LinearGradient(
                          colors: [
                            fsectionColor.withOpacity(0.5),
                            Colors.transparent
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                        show: true,
                      ),
                      spots: data.spot,
                    ),
                  ],
                  minX: 0,
                  maxX: 120,
                  minY: 0,
                  maxY: 100,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
