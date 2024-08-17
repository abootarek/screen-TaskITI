import 'package:flutter/material.dart';
import 'package:flutter_application_1/featuers/ui_screen/widget/categorey_container.dart';

class CategoryUI extends StatelessWidget {
  const CategoryUI({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              'Category',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            Spacer(),
            Text(
              'See All (9)',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: Colors.black38,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 25,
        ),
        CategoryContainer(
          text: 'fruits',
          image: 'assets/images/fruits.png',
        ),
      ],
    );
  }
}
