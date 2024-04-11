import 'package:flutter/material.dart';
import 'package:recipe_book/pages/recipe_details_page/recipe_details_page.dart';

import '../../../models/recipe_model.dart';

class RecipeWidget extends StatelessWidget {
  const RecipeWidget({required this.recipe, super.key});

  final RecipeModel recipe;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => RecipeDetailsPage(recipe: recipe)),
      ),
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            ClipRRect(
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(12), topRight: Radius.circular(12)),
                child:
                    Image.asset('assets/images/original.png', height: 200, width: double.infinity, fit: BoxFit.cover)),
            Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(12), bottomRight: Radius.circular(12)),
                  color: Colors.black,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      recipe.name,
                      style: const TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          '${recipe.rating}/10',
                          style: const TextStyle(
                              fontFamily: 'Roboto', fontSize: 16, fontWeight: FontWeight.w400, color: Colors.white),
                        ),
                        const SizedBox(width: 4),
                        const Icon(Icons.star_border_rounded, color: Colors.yellow)
                      ],
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
