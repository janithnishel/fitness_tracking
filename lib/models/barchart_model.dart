import 'package:app6/models/graph_model.dart';
import 'package:flutter/material.dart';

class BarChartModel {
  final String label;
  final Color color;
  List<GraphModel> graphList = [];

  BarChartModel({
    required this.label,
    required this.color,
    required this.graphList,
  });
}
