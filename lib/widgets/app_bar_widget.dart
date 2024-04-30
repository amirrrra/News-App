import 'package:flutter/material.dart';
import 'package:news_app/utils/constants.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return SliverAppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'News',
            style: TextStyle(
              color: black,
              fontWeight: FontWeight.w700,
              fontSize: screenWidth / 15,
            ),
          ),
          Text(
            'Cloud',
            style: TextStyle(
              color: blue,
              fontWeight: FontWeight.w700,
              fontSize: screenWidth / 15,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
