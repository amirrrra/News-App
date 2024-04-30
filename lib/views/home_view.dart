import 'package:flutter/material.dart';
import 'package:news_app/widgets/app_bar_widget.dart';
import 'package:news_app/widgets/category_list_widget.dart';
import 'package:news_app/widgets/news_list_builder_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // Creates custom scroll effects using slivers
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: CustomScrollView(
          // Slivers Family
          slivers: [
            AppBarWidget(),
            // Creates a sliver that contains a single box widget
            SliverToBoxAdapter(
              child: CategoryListWidget(),
            ),
            NewsListWidgetBuilder(
              category: 'general',
            ),
          ],
        ),
      ),
    );
  }
}
