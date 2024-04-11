import 'ingredient_model.dart';

class RecipeModel {
  String name;
  int rating;
  String image;
  String time;
  String description;
  List<IngredientModel> ingredients;

  RecipeModel({
    required this.name,
    required this.rating,
    this.image = "assets/images/potato.jpg",
    required this.time,
    required this.description,
    required this.ingredients,
  });
}
