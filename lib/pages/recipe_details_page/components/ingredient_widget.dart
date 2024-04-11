import 'package:flutter/material.dart';

import '../../../models/ingredient_model.dart';

class IngredientWidget extends StatelessWidget {
  const IngredientWidget({required this.index, required this.ingredient, super.key});

  final int index;
  final IngredientModel ingredient;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '${index.toString()}.',
          style: const TextStyle(
            fontFamily: 'Сoquettec',
            fontSize: 24,
            fontStyle: FontStyle.italic,
            color: Colors.black,
          ),
        ),
        const SizedBox(width: 4),
        Expanded(
          child: Text(
            ingredient.name,
            style: const TextStyle(
              fontFamily: 'Сoquettec',
              fontSize: 24,
              fontStyle: FontStyle.italic,
              color: Colors.black,
            ),
          ),
        ),
        const SizedBox(width: 4),
        Container(
          constraints: const BoxConstraints(minWidth: 40),
          child: Text(
            ingredient.count.toString(),
            textAlign: TextAlign.end,
            style: const TextStyle(
              fontFamily: 'Сoquettec',
              fontSize: 24,
              fontStyle: FontStyle.italic,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}
