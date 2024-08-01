import 'package:app6/models/activity_model.dart';

class ActivityModelData {
  final List<ActivityModel> activityDataList = [
    ActivityModel(
      imageUrl: ("assets/icons/burn.png"),
      value: "230",
      title: "Water Level",
    ),
    ActivityModel(
      imageUrl: ("assets/icons/steps.png"),
      value: "7.8k",
      title: "Miles Steps",
    ),
    ActivityModel(
      imageUrl: ("assets/icons/distance.png"),
      value: "340m",
      title: "Covered Distance",
    ),
    ActivityModel(
      imageUrl: ("assets/icons/sleep.png"),
      value: "7h48m",
      title: "Sleep",
    ),
  ];
}
