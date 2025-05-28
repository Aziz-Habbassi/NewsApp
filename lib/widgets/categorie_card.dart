import 'package:flutter/material.dart';

class CategorieCard extends StatelessWidget {
  const CategorieCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 5),
      child: Container(
        alignment: Alignment.center,
        height: 110,
        width: 180,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/sports.jpg"),
            fit: BoxFit.cover,
          ),

          borderRadius: BorderRadius.circular(18),
        ),
        child: Text(
          "Sports",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w500,
            shadows: [
              Shadow(offset: Offset(6, 4), color: Colors.black, blurRadius: 10),
            ],
          ),
        ),
      ),
    );
  }
}
