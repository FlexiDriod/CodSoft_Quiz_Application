// ignore_for_file: file_names
class Category_view {
  String thumbnail;
  String name;
  String desc;

  Category_view({
    required this.name,
    required this.thumbnail,
    required this.desc,
  });
}

// Question's topics Category Constructor

List<Category_view> categoryList = [
  Category_view(
    name: 'Linux',
    desc:
        "🐧 Ready to test your Linux skills?\nLinux is a free, powerful OS that runs everything from phones to supercomputers.\nLet's see how much you know! 🚀",
    thumbnail: 'assets/icons8-bash-240.png',
  ),
  Category_view(
    name: 'C++',
    desc:
        "🌟 Ready to unravel the mysteries of C++?\nDid you know C++ was called 'C with Classes'?\nMore surprises await! Ready to level up? 💻💥",
    thumbnail: 'assets/icons8-c++-480.png',
  ),
  Category_view(
    name: 'Java',
    desc:
        "🔥 Ready to put your Java skills to the test?\nJava, a versatile programming language,\npowering mobile apps to enterprise systems!.\nLet's see what you've got! 💻✨",
    thumbnail: 'assets/icons8-java-logo-750.png',
  ),
  Category_view(
    name: 'Python',
    desc:
        "🐍 Ready to test your Python skills?\n From scripts to web apps, Python does it all.\nLet's see what you've got! 🚀",
    thumbnail: 'assets/icons8-python-480.png',
  ),
  Category_view(
    name: 'Flutter',
    desc:
        "🎯 Ready to test your Flutter/Dart skills?\nPowering Hybrid mobile apps with ease,\nlet's see what you can do! 📱✨",
    thumbnail: 'assets/icons8-flutter-480.png',
  ),
  Category_view(
    name: 'PostgresSQL',
    desc:
        "🐘 Are you ready to test your PostgreSQL skills?\nFrom databases to data warehousing,\nLet's see how much you know! 📊💡",
    thumbnail: 'assets/icons8-postgresql-400.png',
  ),
  Category_view(
    name: 'PHP',
    desc:
        "💻 Ready to test your PHP skills?\nFrom dynamic websites to server-side scripting,\nPHP's got you covered! Let's do this! 🚀",
    thumbnail: 'assets/icons8-php-logo-512.png',
  ),
];
