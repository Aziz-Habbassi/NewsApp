import 'package:flutter/material.dart';
import 'package:news_app/services/get_categories.dart';
import 'package:news_app/widgets/categorie_card.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, i) {
          return CategorieCard(categorie: GetCategories().categoriesList[i]);
        },
      ),
    );
  }
}
