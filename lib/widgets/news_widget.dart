import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/utils/constants.dart';

class NewsWidget extends StatelessWidget {
  final ArticleModel articleModel;

  const NewsWidget({
    super.key,
    required this.articleModel,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 20,
      ),
      child: Column(
        children: [
          // Widget to give radius
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.network(
              articleModel.image ?? 'https://www.austintexas.gov/themes/custom/coa/images/news-default.png',
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            articleModel.title,
            maxLines: 2,
            // Widget to handle the overflowing text
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            articleModel.subTitle ?? '',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: grey,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}


