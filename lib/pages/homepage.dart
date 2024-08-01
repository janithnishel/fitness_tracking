import 'package:app6/constant/responsive.dart';
import 'package:app6/widgets/dashboard.dart';
import 'package:app6/widgets/sidebar.dart';
import 'package:app6/widgets/summary_section.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final isDesktop = Responsive.isDesktopScreenSize(context);

    return Scaffold(
      drawer: !isDesktop
          ? const SizedBox(
              width: 250,
              child: SideBar(),
            )
          : null,
      endDrawer: !isDesktop
          ? const SizedBox(
              width: 500,
              child: SummerySection(),
            )
          : null,
      body: SafeArea(
        child: Row(
          children: [
            if (isDesktop)
              const Expanded(
                flex: 2,
                child: SizedBox(
                  child: SideBar(),
                ),
              ),
            const Expanded(
              flex: 7,
              child: SizedBox(child: Dashboard()),
            ),
            if (isDesktop)
              const Expanded(
                flex: 3,
                child: SizedBox(child: SummerySection()),
              ),
          ],
        ),
      ),
    );
  }
}
