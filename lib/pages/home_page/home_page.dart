import 'package:flutter/material.dart';
import 'package:recipe_book/pages/home_page/components/recipe_widget.dart';

import '../../constants/recipes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(244, 244, 244, 1),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Картошка всему голова',
          style: TextStyle(
            fontFamily: 'Сoquettec',
            fontSize: 32,
            fontStyle: FontStyle.italic,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView(padding: const EdgeInsets.symmetric(horizontal: 20), children: [
        const SizedBox(height: 8),
        for (int i = 0; i < recipes.length; i++) ...[
          RecipeWidget(recipe: recipes[i]),
          const SizedBox(height: 8),
        ]
      ]),
    );
  }
}
