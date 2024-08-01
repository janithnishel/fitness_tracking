import 'package:app6/constant/colors.dart';
import 'package:app6/constant/responsive.dart';
import 'package:app6/data/shedule_data.dart';
import 'package:app6/widgets/custom_box.dart';
import 'package:app6/widgets/piechart_card.dart';
import 'package:flutter/material.dart';

class SummerySection extends StatelessWidget {
  const SummerySection({super.key});

  @override
  Widget build(BuildContext context) {
    final sheduleData = SheduleData();
    final bool isDesktop = Responsive.isDesktopScreenSize(context);

    return Container(
          color: isDesktop?Colors.transparent:fcardBgColor ,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           const PieChartCard(),
            const SizedBox(
              height: 20,
            ),
            const Center(
              child: Text(
                "Summary",
                style: TextStyle(
                    color: fgreyColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            CustomBox(
              color: flineColor,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _data(title: "Cal", value: "305"),
                    _data(title: "Steps", value: "10983"),
                    _data(title: "Distance", value: "7km"),
                    _data(title: "Sleep", value: "7hr"),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const Text(
              "Sheduled",
              style: TextStyle(
                  color: fsecondaryColor,
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 20,
            ),
            ListView.builder(
              itemCount: sheduleData.sheduleList.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: CustomBox(
                    color: flineColor,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                sheduleData.sheduleList[index].title,
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: fsecondaryColor,
                                ),
                              ),
                              Text(
                                sheduleData.sheduleList[index].datTime,
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: fgreyColor,
                                ),
                              )
                            ],
                          ),
                          Icon(
                            sheduleData.sheduleList[index].icon,
                            color: fgreyColor,
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }

  Widget _data({required String title, required value}) {
    return Column(
      children: [
        Text(
          title,
          style: const TextStyle(
            color: fsecondaryColor,
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          value,
          style: const TextStyle(
            color: fgreyColor,
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
