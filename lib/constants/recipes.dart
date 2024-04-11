import 'package:recipe_book/models/recipe_model.dart';

import '../models/ingredient_model.dart';

List<RecipeModel> recipes = [
  RecipeModel(
    name: "Картошка жареная",
    rating: 12,
    time: '5 мин',
    description: "Ну что сказать, безупречный баланс. Эталон гармонии. Навсегда дает +10 ко всем атрибутам",
    ingredients: [
      IngredientModel(name: 'Картошка', count: 12),
      IngredientModel(name: 'Огонь', count: 1),
      IngredientModel(name: 'Масло', count: 1)
    ],
  ),
  RecipeModel(
    name: "Картошка огненная",
    rating: 12,
    time: '7 мин',
    description:
        "Волшебная огненная картошка — магическое растение с корнями, излучающими тепло и свет. Её плоды подобны пылающим уголькам и способны обогреть даже самое холодное сердце. Символ силы и надежды, она приносит утешение в самые тёмные времена, а её семена пробуждают внутренний огонь силы и мудрости.",
    ingredients: [
      IngredientModel(name: 'Картошка', count: 1),
      IngredientModel(name: 'Мана:', count: 75),
      IngredientModel(name: 'Уровень:', count: 5),
      IngredientModel(name: 'Рецепт огненной картошки', count: 1)
    ],
  ),
  RecipeModel(
    name: "Картошка волшебная",
    rating: 12,
    time: '9 мин',
    description:
        "Волшебная картошка — дивное растение с пестрыми листьями, из нежной земли вырастающее. Её клубни, сверкающие магическими огнями, обладают целебными свойствами и дарят силу и энергию. Символ изобилия и волшебства, она согревает тело и душу, принося радость и умиротворение своему обладателю.",
    ingredients: [
      IngredientModel(name: 'Картошка', count: 1),
      IngredientModel(name: 'Уровень:', count: 10),
      IngredientModel(name: 'Enchanted Mango', count: 2),
      IngredientModel(name: 'Рецепт волшебной картошки', count: 1)
    ],
  ),
  RecipeModel(
    name: "Картошка телепортирующая",
    rating: 12,
    time: '11 мин',
    description:
        "Волшебная телепортирующая картошка — удивительное растение с зелёными листьями, из плодов которого исходит мистическая сила перемещения. Её клубни, наполненные энергией космоса, способны мгновенно перенести обладателя в любое место по его желанию. Символ свободы и исследований, она открывает новые горизонты и приключения.",
    ingredients: [
      IngredientModel(name: 'Картошка', count: 1),
      IngredientModel(name: 'TownPortalScroll', count: 1),
      IngredientModel(name: 'Рецепт телепортирующей картошки', count: 1)
    ],
  ),
  RecipeModel(
    name: "Картошка варёная",
    rating: 12,
    time: '10 мин',
    description: "Варёная картошка - что-то слишком просто",
    ingredients: [
      IngredientModel(name: 'Картошка', count: 10),
      IngredientModel(name: 'Вода', count: 4),
      IngredientModel(name: 'Соль', count: 0.5)
    ],
  )
];
