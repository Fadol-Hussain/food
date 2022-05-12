import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food/models/recipe.dart';

class PopularList extends StatelessWidget {
  const PopularList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          itemCount: recipe.length,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Container(
              height: 98,
              margin: const EdgeInsets.only(bottom: 16),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: Colors.transparent),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                      child: Row(
                    children: [
                      Container(
                        height: 53.43,
                        width: 73,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    'assets/images/${recipe[index].recipeImages}'))),
                      ),
                      const SizedBox(
                        width: 18.56,
                      ),
                      Expanded(
                          child: Column(
                        children: [
                          Text(
                            recipe[index].recipeName,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            '${recipe[index].recipeMaker}\s recipe',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: const TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ))
                    ],
                  )),
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 15,
                        child: Text(
                          recipe[index].recipeMaker[0],
                          style: TextStyle(color: recipe[index].starColor),
                        ),
                        backgroundColor: recipe[index].endColor,
                      ),
                      const Spacer(),
                    ],
                  )
                ],
              ),
            );
          }),
    );
  }
}
