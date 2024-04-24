import 'package:flutter/material.dart';
import 'package:news_app/utils/constants.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'News',
            style: TextStyle(
              color: black,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Cloud',
            style: TextStyle(
              color: orange,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
