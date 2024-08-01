import 'package:app6/models/barchart_model.dart';
import 'package:app6/models/graph_model.dart';
import 'package:flutter/material.dart';

class BarGraphSectionData {
  final List<BarChartModel> data = [
    BarChartModel(
      label: "Calories Burned",
      color: const Color.fromARGB(255, 90, 128, 254),
      graphList: [
        GraphModel(x: 0, y: 8),
        GraphModel(x: 1, y: 10),
        GraphModel(x: 2, y: 7),
        GraphModel(x: 3, y: 4),
        GraphModel(x: 4, y: 4),
        GraphModel(x: 5, y: 6),
      ],
    ),

    // Second set of data
    BarChartModel(
      label: "Protein",
      color: const Color.fromARGB(255, 174, 0, 255),
      graphList: [
        GraphModel(x: 0, y: 8),
        GraphModel(x: 1, y: 10),
        GraphModel(x: 2, y: 9),
        GraphModel(x: 3, y: 6),
        GraphModel(x: 4, y: 6),
        GraphModel(x: 5, y: 7),
      ],
    ),

    // Third set of data
    BarChartModel(
      label: "Carbs Intake",
      color: const Color.fromARGB(255, 3, 247, 178),
      graphList: [
        GraphModel(x: 0, y: 7),
        GraphModel(x: 1, y: 10),
        GraphModel(x: 2, y: 7),
        GraphModel(x: 3, y: 4),
        GraphModel(x: 4, y: 4),
        GraphModel(x: 5, y: 10),
      ],
    ),
  ];

  final bottomLabel = ['M', 'T', 'W', 'T', 'F', 'S'];
}
