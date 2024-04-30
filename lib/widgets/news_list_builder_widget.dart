import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/widgets/circular_indicator_widget.dart.dart';
import 'package:news_app/widgets/error_message_widget.dart';
import 'package:news_app/widgets/news_list_widget.dart';

class NewsListWidgetBuilder extends StatefulWidget {
  const NewsListWidgetBuilder({super.key});

  @override
  State<NewsListWidgetBuilder> createState() => _NewsListWidgetBuilderState();
}

class _NewsListWidgetBuilderState extends State<NewsListWidgetBuilder> {
  dynamic listenToFuture;
  // We separate the (trigger & listen)
  @override
  void initState() {
    super.initState();
    // 1- Method is triggered once => Data is then available
    listenToFuture = NewsService().getTechnologyNews();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      // 2- With every rebuild future parameter is listening (no trigger any more)
      future: listenToFuture,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NewsListWidget(
            articlesList: snapshot.data!,
          );
        } else if (snapshot.hasError) {
          return const ErrorMessageWidget();
        } else {
          return const CircularIndicatorWidget();
        }
      },
    );
  }
}

