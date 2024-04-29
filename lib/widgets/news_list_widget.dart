
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/widgets/news_widget.dart';

class NewsListWidget extends StatelessWidget {
  const NewsListWidget({
    super.key,
    required this.articlesList,
  });

  final List<ArticleModel> articlesList;

  @override
  Widget build(BuildContext context) {
    return SliverList(
        // Creates a delegate that supplies children for slivers using the given builder callback.
        delegate: SliverChildBuilderDelegate(
          childCount: articlesList.length,
          (context, index) {
            return NewsWidget(
              articleModel: articlesList[index],
            );
          },
        ),
      );
  }
}
