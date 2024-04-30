import 'package:flutter/material.dart';
import 'package:news_app/utils/constants.dart';

class CircularIndicatorWidget extends StatelessWidget {
  const CircularIndicatorWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;

    return SliverToBoxAdapter(
      child: SizedBox(
        height: screenHeight / 1.5,
        child: const Center(
          child: CircularProgressIndicator(
            color: black,
            backgroundColor: blue,
          ),
        ),
      ),
    );
  }
}
