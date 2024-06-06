import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../Constructors/category.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key, required this.categoryList});

  final List<Category_view> categoryList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffadede3),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: AppBar(
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Color(0xff060870),
            // Change the status bar color
            statusBarIconBrightness: Brightness.light,
            // Change the status bar icons' color
            systemNavigationBarColor: Color(0xff060870),
            systemNavigationBarDividerColor: Color(0xff000000),
            systemNavigationBarIconBrightness: Brightness.light,
          ),
          centerTitle: true,
          backgroundColor: const Color(0xff6840ff),
          foregroundColor: Colors.white,
          title: const Text(
            "Explore Quiz Arena",
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
      body: ListView.builder(
        clipBehavior: Clip.antiAlias,
        itemCount: categoryList.length,
        itemBuilder: (context, index) {
          final category = categoryList[index];
          return ExpansionTile(
            expansionAnimationStyle: AnimationStyle(
                duration: const Duration(seconds: 1),
                curve: Curves.easeOutQuad),
            tilePadding: const EdgeInsets.all(20.0),
            childrenPadding: const EdgeInsets.only(bottom: 10.0),
            //collapsedBackgroundColor: const Color(0xffadede3),
            backgroundColor: const Color(0xffF4A5D0),
            trailing: IconButton(
              splashColor: Colors.pink,
              hoverColor: Colors.blueAccent,
              onPressed: () {
                if (category.name == 'Linux') {
                  Get.toNamed("/LinuxScreen");
                } else if (category.name == 'C++') {
                  Get.toNamed("/CppQuizScreen");
                } else if (category.name == 'Java') {
                  Get.toNamed("/JavaQuizScreen");
                } else if (category.name == 'Python') {
                  Get.toNamed("/PythonQuizScreen");
                } else if (category.name == 'Dart') {
                  Get.toNamed("/DartQuizScreen");
                } else if (category.name == 'Flutter') {
                  Get.toNamed("/FlutterQuizScreen");
                } else if (category.name == 'PostgresSQL') {
                  Get.toNamed("/PgSQLQuizScreen");
                } else if (category.name == 'PHP') {
                  Get.toNamed("/PhpQuizScreen");
                }
              },
              icon: Icon(MdiIcons.chevronDoubleRight,
                  size: 40, weight: 50.0, color: Colors.black87),
            ),
            leading: Container(
              width: 70,
              height: 100,
              decoration: const BoxDecoration(
                shape: BoxShape.rectangle,
              ),
              child: Image.asset(
                category.thumbnail,
                fit: BoxFit.fitHeight,
              ),
            ),
            title: RichText(
              text: TextSpan(
                text: category.name,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            children: <Widget>[
              ListTile(
                titleAlignment: ListTileTitleAlignment.center,
                subtitle: Text(
                  textAlign: TextAlign.center,
                  category.desc,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 17,
                    color: Colors.black,
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
