import 'package:flutter/material.dart';

import '../../models/product_model.dart';
import '../../models/recipe_model.dart';
import 'components/ingredient_widget.dart';

class RecipeDetailsPage extends StatelessWidget {
  const RecipeDetailsPage({required this.product, super.key});

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          leading: InkWell(
            onTap: () => Navigator.of(context).pop(),
            child: const Icon(Icons.arrow_back_rounded, color: Colors.white),
          ),
          title: Text(
            product.title,
            style: const TextStyle(
              fontFamily: 'Сoquettec',
              fontSize: 32,
              fontStyle: FontStyle.italic,
              color: Colors.white,
            ),
          ),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          children: [
            const SizedBox(height: 20),
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              // child: Image.asset('assets/images/original.png', height: 200, width: double.infinity, fit: BoxFit.cover),
              child: Image.network(product.images[0], height: 200, width: double.infinity, fit: BoxFit.cover),
            ),
            const SizedBox(height: 8),
            const Text(
              'Описание:',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Сoquettec',
                fontSize: 32,
                fontStyle: FontStyle.italic,
                color: Colors.black,
              ),
            ),
            Text(
              product.price.toString(),
              style: const TextStyle(
                fontFamily: 'Сoquettec',
                fontSize: 24,
                fontStyle: FontStyle.italic,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 8),
            const Center(
              child: Text(
                'Рецепт:',
                style: TextStyle(
                  fontFamily: 'Сoquettec',
                  fontSize: 32,
                  fontStyle: FontStyle.italic,
                  color: Colors.black,
                ),
              ),
            ),
            // const SizedBox(height: 4),
            // for (int i = 0; i < recipe.ingredients.length; i++) ...[
            //   IngredientWidget(index: i + 1, ingredient: recipe.ingredients[i]),
            //   const SizedBox(height: 8),
            // ],
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
