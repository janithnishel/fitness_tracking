import 'package:app6/constant/colors.dart';
import 'package:app6/constant/responsive.dart';
import 'package:app6/data/bargraph_data.dart';
import 'package:app6/models/graph_model.dart';
import 'package:app6/widgets/custom_box.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class BarChartCard extends StatelessWidget {
  const BarChartCard({super.key});

  @override
  Widget build(BuildContext context) {
    final graphData = BarGraphSectionData();

    final bool isMobile =Responsive.isMobile(context);

    return GridView.builder(
      shrinkWrap: true,
      itemCount: graphData.data.length,
      physics: const ScrollPhysics(),
      gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: isMobile?2:3,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: isMobile?5/6:5/4,
      ),
      itemBuilder: (context, index) {
        return CustomBox(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  graphData.data[index].label,
                  style: const TextStyle(
                    color: fgreyColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: BarChart(
                    BarChartData(
                      barTouchData: BarTouchData(
                        touchTooltipData:
                            BarTouchTooltipData(tooltipBgColor: flineColor),
                      ),
                      barGroups: barGroup(
                        color: graphData.data[index].color,
                        point: graphData.data[index].graphList,
                      ),
                      titlesData: FlTitlesData(
                        leftTitles: AxisTitles(
                          sideTitles: SideTitles(
                            showTitles: false,
                          ),
                        ),
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
                            showTitles: true,
                            getTitlesWidget: (value, meta) {
                              return Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Text(
                                  graphData.bottomLabel[value.toInt()],
                                  style: const TextStyle(
                                    color: fgreyColor,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                      borderData: FlBorderData(show: false),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  List<BarChartGroupData> barGroup({
    required List<GraphModel> point,
    required Color color,
  }) {
    return point
        .map(
          (point) => BarChartGroupData(
            x: point.x.toInt(),
            barRods: [
              BarChartRodData(
                toY: point.y,
                width: 12,
                gradient: LinearGradient(
                  colors: [
                    color,
                    color.withOpacity(0.01),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
            ],
          ),
        )
        .toList();
  }
}
