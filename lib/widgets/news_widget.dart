import 'package:flutter/material.dart';
import 'package:news_app/utils/constants.dart';

class NewsWidget extends StatelessWidget {
  const NewsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20,),
      child: Column(
        children: [
          // Widget to give radius
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset(
              'assets/pics/baymax.jpg',
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          const Text(
            'Baymax! is an American animated superhero science fiction comedy television series created by Don Hall that premiered on Disney+ on June 29, 2022, featuring the Marvel Comics character of the same name',
            maxLines: 2,
            // Widget to handle the overflowing text
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          const Text(
            'Baymax! is an American animated superhero science fiction comedy television series created by Don Hall that premiered on Disney+ on June 29, 2022, featuring the Marvel Comics character of the same name',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: grey,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
