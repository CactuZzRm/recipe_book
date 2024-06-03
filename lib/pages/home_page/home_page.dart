import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recipe_book/pages/home_page/components/recipe_widget.dart';
import 'package:recipe_book/providers/home_page_provider.dart';

import '../../constants/recipes.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    context.read<HomePageProvider>().getItems();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final products = context.watch<HomePageProvider>().items;

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
        // for (int i = 0; i < recipes.length; i++) ...[
        //   RecipeWidget(recipe: recipes[i]),
        //   const SizedBox(height: 8),
        // ]
        for (var product in products) 
          ...[
            RecipeWidget(product: product),
            const SizedBox(height: 8),
          ]
      ]),
    );
  }
}
