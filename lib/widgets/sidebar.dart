import 'package:app6/constant/colors.dart';
import 'package:app6/constant/responsive.dart';
import 'package:app6/data/sidebar_data.dart';
import 'package:app6/models/sidebar_model.dart';
import 'package:flutter/material.dart';

class SideBar extends StatefulWidget {
  const SideBar({super.key});

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  int indexNumber = 0;
  final sideBarDetails = SideBarData().sidebarDataList;

  @override
  Widget build(BuildContext context) {
    final isDessktop = Responsive.isDesktopScreenSize(context);

    return Container(
      color: isDessktop?Colors.transparent:fcardBgColor,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 15,
          right: 20,
          top: 60,
        ),
        child: Column(
          children: [
            ListView.builder(
                itemCount: sideBarDetails.length,
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                itemBuilder: (context, index) {
                  SideBarModel sidebar = sideBarDetails[index];
                  //go trough the list and render the listview
                  return _singleMenue(sidebar, index);
                }),
          ],
        ),
      ),
    );
  }

  // Create the side bar one single element
  Widget _singleMenue(SideBarModel sidebar, int index) {
    return GestureDetector(
      onTap: () {
        setState(
          () {
            indexNumber = index;
          },
        );
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: indexNumber == index ?fsectionColor: Colors.transparent,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
          child: Row(
            children: [
              Icon(
                sidebar.icon,
                color: indexNumber == index ? fBlackColor: fgreyColor,
              ),
              const SizedBox(
                width: 15,
              ),
              Text(
                sidebar.text,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight:FontWeight.w700,
                      
                  color: indexNumber == index ? fBlackColor : fgreyColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
