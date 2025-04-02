import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class CustomizedAppBar extends StatefulWidget {
  const CustomizedAppBar({super.key});

  @override
  State<CustomizedAppBar> createState() => _CustomizedAppBarState();
}

class _CustomizedAppBarState extends State<CustomizedAppBar> {
  final hintStyle = WidgetStateProperty.all(const TextStyle(
      fontSize: 20.0, color: Colors.black, fontWeight: FontWeight.w400));

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
      height: 280,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
        gradient: LinearGradient(
          colors: [
            Color(0xff886ff2),
            Color(0xff6840ff),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 30.0),
                child: Text(
                  "👋 Hey there!\n Explore the TechQuizzer",
                  style: TextStyle(
                      fontFamily: 'Nunito',
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w900),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 45,
          ),

          // SearchField(),
          SearchAnchor(
            isFullScreen: false,
            keyboardType: TextInputType.text,
            dividerColor: Colors.black,
            builder: (BuildContext context, SearchController controller) {
              return SearchBar(
                  controller: controller,
                  onTap: () {
                    controller.openView();
                  },
                  onChanged: (_) {
                    setState(() {}); // Trigger a rebuild to update suggestions
                  },
                  leading: Icon(
                    Icons.search,
                    color: Colors.blue[900],
                    size: 30,
                  ),
                  hintStyle: hintStyle,
                  hintText: "Search for different topics",
                  trailing: <Widget>[
                    IconButton(
                      icon: Icon(MdiIcons.send, size: 30, color: Colors.pink),
                      onPressed: () {
                        setState(() {
                          String searchText = controller.text.toLowerCase();
                          if (searchHints.contains(searchText)) {
                            if (searchText == 'linux') {
                              Navigator.pushReplacementNamed(context, "/LinuxScreen");
                            } else if (searchText == 'c++') {
                              Navigator.pushReplacementNamed(context, "/CppQuizScreen");
                            } else if (searchText == 'java') {
                              Navigator.pushReplacementNamed(context, "/JavaQuizScreen");
                            } else if (searchText == 'python') {
                              Navigator.pushReplacementNamed(context, "/PythonQuizScreen");
                            } else if (searchText == 'dart') {
                              Navigator.pushReplacementNamed(context, "/DartQuizScreen");
                            } else if (searchText == 'flutter') {
                              Navigator.pushReplacementNamed(context, "/FlutterQuizScreen");
                            } else if (searchText == 'postgresql') {
                              Navigator.pushReplacementNamed(context, "/PgSQLQuizScreen");
                            } else if (searchText == 'php') {
                              Navigator.pushReplacementNamed(context, "/PhpQuizScreen");
                            }
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text(
                                    "Sorry, this topic is not available yet."),
                              ),
                            );
                          }
                        });
                      },
                    ),
                  ]);
            },
            suggestionsBuilder:
                (BuildContext context, SearchController controller) {
              // Filtered suggestions based on current input text
              List<String> filteredSuggestions = searchHints
                  .where((hint) => hint.contains(controller.text.toLowerCase()))
                  .toList();
              return List<Widget>.generate(filteredSuggestions.length,
                  (int index) {
                final String item = filteredSuggestions[index];
                return ListTile(
                  title: Text(item),
                  onTap: () {
                    setState(() {
                      controller.closeView(item);
                    });
                  },
                );
              });
            },
          )
        ],
      ),
    );
  }

  List<String> searchHints = [
    'linux',
    'c++',
    'java',
    'python',
    'postgresql',
    'flutter',
    'php'
  ];
}
