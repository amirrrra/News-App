import 'package:flutter/material.dart';
import 'package:news_app/widgets/news_list_builder_widget.dart';

class CategoryView extends StatelessWidget {
  final String categoryOnTap;
  const CategoryView({
    super.key,
    required this.categoryOnTap,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          right: 20,
          left: 20,
          top: 30,
          bottom: 10,
        ),
        child: CustomScrollView(
          slivers: [
            NewsListWidgetBuilder(
              category: categoryOnTap,
            ),
          ],
        ),
      ),
    );
  }
}
