import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../components/popular_list.dart';
import '../components/recipe_list.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFe7eefb),
      body: SafeArea(
          child: ListView(
        primary: true,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.5, vertical: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Recipes',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF0E0E2D)),
                ),
                SizedBox(
                  height: 36,
                  child: SvgPicture.asset('assets/svg/others.svg'),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 16.53,
          ),
          const RecipeList(),
          const SizedBox(
            height: 42.52,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Row(
              children: const [
                SizedBox(
                  width: 4.26,
                ),
                Text(
                  'Popular',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const PopularList()
        ],
      )),
    );
  }
}
