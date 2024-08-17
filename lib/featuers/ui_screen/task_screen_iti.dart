import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/widget/app_text_form_filed.dart';
import 'package:flutter_application_1/featuers/ui_screen/widget/category_ui.dart';
import 'package:flutter_application_1/featuers/ui_screen/widget/friens_category.dart';
import 'package:flutter_application_1/featuers/ui_screen/widget/pageViwe_ui.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _page = 1;

  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///////////////////////////////
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.white,
        backgroundColor: const Color.fromARGB(255, 209, 188, 232),
        buttonBackgroundColor: const Color.fromARGB(255, 88, 8, 180),
        key: _bottomNavigationKey,
        index: _page,
        items: const <Widget>[
          Icon(
            Icons.home,
            size: 30,
          ),
          Icon(
            Icons.add,
            size: 30,
          ),
          Icon(
            Icons.save_as,
            size: 30,
          ),
        ],
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
      ),
      //////////////////////////////
      backgroundColor: const Color.fromARGB(255, 232, 230, 230),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 20,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const AppTextFormField(
                  hinttext: 'Find Restaurants',
                  suffixicon: Icon(Icons.settings),
                  prefixeicon: Icon(Icons.search),
                ),
                const SizedBox(height: 15),
                const Row(
                  children: [
                    Text(
                      'Trending Restaurants',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    Text(
                      'See All (45)',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const PageViewUi(),
                const SizedBox(
                  height: 20,
                ),
                const CategoryUI(),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  children: [
                    Text(
                      'Friends',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    Spacer(),
                    Text(
                      'See All (9)',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.black38,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                SizedBox(
                  height: 70,
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: 8,
                    itemBuilder: (context, index) {
                      return const CategoresFreinds(
                          image: 'assets/images/fast_food.png');
                    },
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
