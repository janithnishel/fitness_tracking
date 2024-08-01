import 'package:app6/models/sidebar_model.dart';
import 'package:flutter/material.dart';

class SideBarData {
  List<SideBarModel> sidebarDataList = [
    SideBarModel(icon: Icons.home, text: "Dashboard"),
    SideBarModel(icon: Icons.person, text: "Profile"),
    SideBarModel(icon: Icons.run_circle, text: "Exersice"),
    SideBarModel(icon: Icons.settings, text: "Setting"),
    SideBarModel(icon: Icons.history, text: "History"),
    SideBarModel(icon: Icons.logout, text: "SignOut"),
  ];
}
