import 'package:flutter/material.dart';
import 'package:news_app/utils/constants.dart';

class ErrorMessageWidget extends StatelessWidget {
  const ErrorMessageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;

    return SliverToBoxAdapter(
      child: SizedBox(
        height: screenHeight / 2,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.warning_rounded,
              size: screenHeight / 12,
              color: red,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Oh snap! ',
              style: TextStyle(
                fontSize: screenHeight / 33,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              'An error has occured.. Try later.',
              style: TextStyle(
                fontSize: screenHeight / 33,
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
