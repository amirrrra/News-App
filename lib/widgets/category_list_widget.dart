import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/category_widget.dart';

class CategoryListWidget extends StatelessWidget {
  const CategoryListWidget({
    super.key,
  });

  final List<CategoryModel> categoryList = const [
    CategoryModel(
      categoryName: 'Technology',
      categoryImage: 'assets/pics/technology.jpg',
    ),
    CategoryModel(
      categoryName: 'Health',
      categoryImage: 'assets/pics/health.jpg',
    ),
    CategoryModel(
      categoryName: 'Sports',
      categoryImage: 'assets/pics/sports.jpeg',
    ),
    CategoryModel(
      categoryName: 'Entertainment',
      categoryImage: 'assets/pics/entertainment.jpg',
    ),
    CategoryModel(
      categoryName: 'Science',
      categoryImage: 'assets/pics/science.jpg',
    ),
    CategoryModel(
      categoryName: 'Business',
      categoryImage: 'assets/pics/business.jpg',
    ),
    CategoryModel(
      categoryName: 'General',
      categoryImage: 'assets/pics/general.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemExtent: 200,
        shrinkWrap: true,
        itemCount: categoryList.length,
        itemBuilder: (context, index) {
          return CategoryWidget(
            obj: categoryList[index],
          );
        },
      ),
    );
  }
}
