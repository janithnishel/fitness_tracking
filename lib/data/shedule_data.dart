import 'package:app6/models/shedule_card.dart';
import 'package:flutter/material.dart';

class SheduleData {
  final List<SheduleCard> sheduleList = [
    SheduleCard(
      title: "Hatha yoga",
      datTime: "Today, 9AM-10AM",
      icon: Icons.message,
    ),
    SheduleCard(
      title: "Body Combat",
      datTime: "Tomorrow, 5PM-6PM",
      icon: Icons.message,
    ),
    SheduleCard(
      title: "Hatha yoga",
      datTime: "Wensday, 9AM-10AM",
      icon: Icons.message,
    )
  ];
}
