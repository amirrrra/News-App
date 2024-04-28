import 'package:flutter/material.dart';
import 'package:news_app/widgets/news_widget.dart';

class NewsListWidget extends StatelessWidget {
  const NewsListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // Creates a sliver that places box children in a linear array
    return SliverList(
      // Creates a delegate that supplies children for slivers using the given builder callback.
      delegate: SliverChildBuilderDelegate(
        childCount: 10,
        (context, index) {
          return const NewsWidget();
        },
      ),
    );
  }
}
