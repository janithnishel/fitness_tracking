import 'package:app6/constant/colors.dart';
import 'package:app6/constant/responsive.dart';
import 'package:app6/data/activity_data.dart';
import 'package:app6/widgets/barchart_card.dart';
import 'package:app6/widgets/custom_box.dart';
import 'package:app6/widgets/linechart_section.dart';
import 'package:app6/widgets/search_section.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final activitydata = ActivityModelData();
  @override
  Widget build(BuildContext context) {

    final bool isMobile = Responsive.isMobile(context);
    return Padding(
      padding: const EdgeInsets.only(
        left:20,
        right: 20,
        top: 10,
        bottom: 20,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SearchSection(),
            const SizedBox(
              height: 15,
            ),
            GridView.builder(
              itemCount: activitydata.activityDataList.length,
              shrinkWrap: true,
              gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: isMobile?2:4,
                crossAxisSpacing: 15,
                mainAxisSpacing: 10,
              ),
              itemBuilder: (context, index) {
                return CustomBox(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        activitydata.activityDataList[index].imageUrl,
                        fit: BoxFit.cover,
                        width: 30,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        activitydata.activityDataList[index].value,
                        style: const TextStyle(
                          color: fsecondaryColor,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        activitydata.activityDataList[index].title,
                        style: const TextStyle(
                          color: fgreyColor,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
            const SizedBox(
              height: 10,
            ),
            const LineChartCard(),
            const SizedBox(
              height: 10,
            ),
            const BarChartCard(),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
