import 'package:flutter/material.dart';
import 'package:food/components/recipe_cart.dart';
import 'package:food/models/recipe.dart';

class RecipeList extends StatefulWidget {
  const RecipeList({Key? key}) : super(key: key);

  @override
  State<RecipeList> createState() => _RecipeListState();
}

class _RecipeListState extends State<RecipeList> {
  final PageController pageController = PageController(viewportFraction: 0.75);
  int currenPage = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 401,
      child: PageView.builder(
        padEnds: false,
        controller: pageController,
        itemCount: recipe.length,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          bool active = index == currenPage;
          return RecipeCart(
              active: active, index: index, recipe: recipe[index]);
        },
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      int position = pageController.page!.round();
      if (currenPage != position) {
        setState(() {
          currenPage = position;
        });
      }
    });
  }
}
