import 'package:app6/constant/colors.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class PieChartDataSet {
  final section = [
    PieChartSectionData(
      color: fprimaryColor,
      value: 25,
      showTitle: false,
      radius: 40,
    ),
    PieChartSectionData(
      color: const Color(0xFF26E5FF),
      value: 20,
      showTitle: false,
      radius: 32,
    ),
    PieChartSectionData(
      color: const Color(0xFFFFCF26),
      value: 10,
      showTitle: false,
      radius: 24,
    ),
    PieChartSectionData(
      color: const Color.fromARGB(255, 39, 238, 145),
      value: 15,
      showTitle: false,
      radius: 16,
    ),
    PieChartSectionData(
      color: fprimaryColor.withOpacity(0.1),
      value: 25,
      showTitle: false,
      radius: 8,
    ),
  ];
}
