// ignore_for_file: file_names

import 'package:flutter/material.dart';
import '../Constructors/category.dart';

class CategoryCard extends StatelessWidget {
  final Category_view category;

  const CategoryCard({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    // Category Topic Design
    return GestureDetector(
      // Based on specific topic redirected to specific screen
      onTap: () {
        if (category.name == 'Linux') {
          Navigator.pushReplacementNamed(context,"/LinuxScreen");
        } else if (category.name == 'C++') {
          Navigator.pushReplacementNamed(context,"/CppQuizScreen");
        } else if (category.name == 'Java') {
          Navigator.pushReplacementNamed(context,"/JavaQuizScreen");
        } else if (category.name == 'Python') {
          Navigator.pushReplacementNamed(context,"/PythonQuizScreen");
        } else if (category.name == 'Dart') {
          Navigator.pushReplacementNamed(context,"/DartQuizScreen");
        } else if (category.name == 'Flutter') {
          Navigator.pushReplacementNamed(context,"/FlutterQuizScreen");
        } else if (category.name == 'PostgresSQL') {
          Navigator.pushReplacementNamed(context,"/PgSQLQuizScreen");
        } else if (category.name == 'PHP') {
          Navigator.pushReplacementNamed(context,"/PhpQuizScreen");
        }
      },
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xffCDF3D0),
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.1),
              blurRadius: 3.0,
              spreadRadius: 0.5,
            ), //BoxShadow
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Image.asset(
                category.thumbnail,
                fit: BoxFit.cover,
                filterQuality: FilterQuality.high,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
                child: Text(
              category.name,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w900,
                fontSize: 25.0,
              ),
            )),
          ],
        ),
      ),
    );
  }
}
