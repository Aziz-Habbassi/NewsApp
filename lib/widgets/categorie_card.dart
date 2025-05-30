import 'package:flutter/material.dart';
import 'package:news_app/models/categorie_model.dart';
import 'package:news_app/services/app_state.dart';
import 'package:provider/provider.dart';

class CategorieCard extends StatelessWidget {
  const CategorieCard({super.key, required this.categorie});
  final Categoriemodel categorie;
  @override
  Widget build(BuildContext context) {
    final appState = context.watch<AppState>();
    return GestureDetector(
      onTap: () {
        appState.updateCategorie(categorie.name);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 5),
        child: Container(
          alignment: Alignment.center,
          height: 110,
          width: 180,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(categorie.image),
              fit: BoxFit.cover,
            ),

            borderRadius: BorderRadius.circular(18),
          ),
          child: Text(
            categorie.name,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w500,
              shadows: [
                Shadow(
                  offset: Offset(6, 4),
                  color: Colors.black,
                  blurRadius: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
