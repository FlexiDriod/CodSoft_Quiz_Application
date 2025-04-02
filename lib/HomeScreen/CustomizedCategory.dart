// ignore_for_file: file_names

import 'package:flutter/material.dart';
import '../Constructors/category.dart';
import 'CategoryCard.dart';
import 'CategoryListView.dart';

class CustomizedCategory extends StatelessWidget {
  const CustomizedCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Explore Quiz's",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.w700,
                    )),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => CategoryListView(categoryList: categoryList)
                    ));
                  },
                  child: Container(
                    color: Colors.pink,
                    child: const Padding(
                      // Add padding for better spacing
                      padding:
                          EdgeInsets.symmetric(horizontal: 12.0, vertical: 5.0),
                      child: Text(
                        "View All",
                        style: TextStyle(
                            fontFamily: 'Nunita',
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 1.0,
            ),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 15,
              childAspectRatio: 0.7,
              mainAxisSpacing: 15,
            ),
            itemBuilder: (context, index) {
              // Access data at current index
              return CategoryCard(
                category: categoryList[index],
              );
            },
            itemCount: 4,
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
