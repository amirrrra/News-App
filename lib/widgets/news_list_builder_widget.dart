import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/utils/constants.dart';
import 'package:news_app/widgets/news_list_widget.dart';

class NewsListWidgetBuilder extends StatefulWidget {
  const NewsListWidgetBuilder({super.key});

  @override
  State<NewsListWidgetBuilder> createState() => _NewsListWidgetBuilderState();
}

class _NewsListWidgetBuilderState extends State<NewsListWidgetBuilder> {
  List<ArticleModel> articlesList = [];
  bool isLoading = true;

  @override
  //is called only once
  void initState() {
    super.initState();
    getTechnologyNews();
  }

  Future<void> getTechnologyNews() async {
    articlesList = await NewsService().getTechnologyNews();
    isLoading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;

    return isLoading
        ? SliverToBoxAdapter(
            child: SizedBox(
              height: screenHeight / 1.3,
              child: const Center(
                child: CircularProgressIndicator(
                  color: black,
                  backgroundColor: orange,
                ),
              ),
            ),
          )
        : articlesList.isNotEmpty
            ? const SliverToBoxAdapter(
                child: Text('Opps, there was an error.. try later.'),
              )
            : NewsListWidget(articlesList: articlesList);
  }
}
