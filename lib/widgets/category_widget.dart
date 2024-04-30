import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/utils/constants.dart';
import 'package:news_app/views/category_view.dart';

class CategoryWidget extends StatelessWidget {
  final CategoryModel obj;
  const CategoryWidget({
    super.key,
    required this.obj,
  });

  @override
  Widget build(BuildContext context) {
    final double screenwidth = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return CategoryView(
                categoryOnTap: obj.categoryName,
              );
            },
          ),
        );
      },
      child: Container(
        height: 100,
        width: 200,
        margin: const EdgeInsets.symmetric(
          horizontal: 5,
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(
              obj.categoryImage,
            ),
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            obj.categoryName,
            style: TextStyle(
              color: white,
              fontWeight: FontWeight.w500,
              fontSize: screenwidth / 20,
            ),
          ),
        ),
      ),
    );
  }
}
