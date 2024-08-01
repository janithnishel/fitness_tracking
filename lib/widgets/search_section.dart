import 'package:app6/constant/colors.dart';
import 'package:app6/constant/responsive.dart';
import 'package:flutter/material.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final bool isDesktop = Responsive.isDesktopScreenSize(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        if (!isDesktop)
          GestureDetector(
            onTap: () => Scaffold.of(context).openDrawer(),
            child: const Padding(
              padding: EdgeInsets.only(right: 5),
              child: Icon(
                Icons.menu,
                size: 40,
                color: fgreyColor,
              ),
            ),
          ),
        Expanded(
          child: TextField(
            cursorColor: fgreyColor,
            style: const TextStyle(
              color: fgreyColor,
              fontSize: 16,
            ),
            decoration: InputDecoration(
              hintText: "Search",
              fillColor: fcardBgColor,
              filled: true,
              hintStyle: const TextStyle(
                color: fgreyColor,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  color: Colors.transparent,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  color: fgreyColor,
                ),
              ),
              prefixIcon: const Icon(
                Icons.search,
                color: fgreyColor,
                size: 20,
              ),
              contentPadding: const EdgeInsets.symmetric(vertical: 5),
            ),
          ),
        ),
        if (!isDesktop)
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: InkWell(
              onTap: () {
                Scaffold.of(context).openEndDrawer();
              },
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset(
                    "assets/image/profile.png",
                    fit: BoxFit.cover,
                    width: 50,
                  )),
            ),
          )
      ],
    );
  }
}
