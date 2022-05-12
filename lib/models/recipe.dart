import 'package:flutter/cupertino.dart';

class Recipe {
  Recipe({
    this.recipeName = "",
    this.recipeImages = "",
    this.recipeMaker = "",
    this.starColor,
    this.endColor,
  });
  String recipeName;
  String recipeImages;
  String recipeMaker;
  Color? starColor;
  Color? endColor;
}

var recipe = [
  Recipe(
    recipeName: 'Vegan Apricot Tart',
    recipeImages: "a.jpg",
    recipeMaker: 'Foodie Yuki',
    starColor: const Color(0xFFF37552),
    endColor: const Color(0xFFF58B5A),
  ),
  Recipe(
    recipeName: 'Choriz & mozzarella gnocchi bake',
    recipeImages: "b.jpg",
    recipeMaker: 'Mariann Turner',
    starColor: const Color(0xFF621e14),
    endColor: const Color(0xFFd13b10),
  ),
  Recipe(
    recipeName: 'Easy butter chicken',
    recipeImages: "c.jpg",
    recipeMaker: 'Jennifer Joyce',
    starColor: const Color(0xFFe18b41),
    endColor: const Color(0xFFC7C73d),
  ),
  Recipe(
    recipeName: 'Easy Classic lasagne',
    recipeImages: "d.jpg",
    recipeMaker: 'Angela Boggiano',
    starColor: const Color(0xFFaf781d),
    endColor: const Color(0xFFd6a651),
  ),
  Recipe(
    recipeName: 'Easy Teriyaki chicken',
    recipeImages: "e.jpg",
    recipeMaker: 'Esther Clark',
    starColor: const Color(0xFF9a9d9a),
    endColor: const Color(0xFFb9b2b5),
  ),
  Recipe(
    recipeName: 'Easy Chocolate fudge cake',
    recipeImages: "f.jpg",
    recipeMaker: 'Member recipe by misskay',
    starColor: const Color(0xFF2e0f07),
    endColor: const Color(0xFF653424),
  ),
  Recipe(
    recipeName: 'One Pan Spaghetti with nduja, fennel & olives',
    recipeImages: "g.jpg",
    recipeMaker: 'Cassie Best',
    starColor: const Color(0xFF8b1d07),
    endColor: const Color(0xFFee882d),
  ),
  Recipe(
    recipeName: 'Easy Pancakes',
    recipeImages: "h.jpg",
    recipeMaker: 'Cassie Best',
    starColor: const Color(0xFFa1783c),
    endColor: const Color(0xFFf3dc37),
  ),
  Recipe(
    recipeName: 'Easy Chicken fajitas',
    recipeImages: "i.jpg",
    recipeMaker: 'Steven Morris',
    starColor: const Color(0xFF3e4824),
    endColor: const Color(0xFF5da6a6),
  ),
  Recipe(
    recipeName: 'Easy vegetable lasagne',
    recipeImages: "j.jpg",
    recipeMaker: 'Emma Lewis',
    starColor: const Color(0xFF914322),
    endColor: const Color(0xFFbf802f),
  ),
  Recipe(
    recipeName: 'Thai fried prawn & pinepple rice',
    recipeImages: "k.jpg",
    recipeMaker: 'Good Food Team',
    starColor: const Color(0xFF5b8e38),
    endColor: const Color(0xFF94bf77),
  ),
];
