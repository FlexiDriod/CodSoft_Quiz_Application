class FlutterQuiz {
  final String question;
  final List<String> answers;
  final int correctAnswerIndex;

  FlutterQuiz({
    required this.question,
    required this.answers,
    required this.correctAnswerIndex,
  });
}

List<FlutterQuiz> questions = [
  FlutterQuiz(
    question: 'What is Flutter?',
    correctAnswerIndex: 1,
    answers: [
      'an open-source backend development framework',
      'an open-source UI toolkit',
      'an open-source cross-platform programming language',
      'a DBMS toolkit',
    ],
  ),
  FlutterQuiz(
    question: 'What is the purpose of the GestureDetector widget?',
    correctAnswerIndex: 2,
    answers: [
      'To display images',
      'To handle user authentication',
      'To detect gestures such as taps, drags, and swipes',
      'To manage state',
    ],
  ),
  FlutterQuiz(
    question: 'What is the purpose of a MaterialApp widget?',
    correctAnswerIndex: 2,
    answers: [
      'To display images',
      'To handle user authentication',
      'To define the structure of a Flutter app',
      'To manage state',
    ],
  ),
  FlutterQuiz(
    question: 'How many types of widgets are there in Flutter?',
    correctAnswerIndex: 0,
    answers: [
      '2',
      '4',
      '6',
      '8+',
    ],
  ),
  FlutterQuiz(
    question: 'A sequence of asynchronous Flutter events is known as a: _____',
    correctAnswerIndex: 2,
    answers: [
      'Flow',
      'Current',
      'Stream',
      'Series',
    ],
  ),
  FlutterQuiz(
    question: 'What is a StatelessWidget?',
    correctAnswerIndex: 1,
    answers: [
      'A widget that can change its state',
      'A widget that does not maintain any state',
      'A widget that only works on weekends',
      'A widget that is always in the state',
    ],
  ),
  FlutterQuiz(
    question:
        'The first alpha version of Flutter was released in _____?',
    correctAnswerIndex: 3,
    answers: [
    '2016',
    '2008',
    '2010',
    '2017',
    ],
  ),
  FlutterQuiz(
    question: 'What is the purpose of the setState() method do in Flutter?',
    correctAnswerIndex: 3,
    answers: [
      'Sets the state of the device',
      'Sets the state of the widget to null',
      'Sets the state of the app to the initial state',
      'Updates the UI when the state of the widget changes',
    ],
  ),
  FlutterQuiz(
    question:
        'What is the purpose of the "pubspec.yaml" file?',
    correctAnswerIndex: 0,
    answers: [
      'To manage dependencies and configuration for the Flutter project',
      'To define the app layout',
      'To store user preferences',
      'To handle user authentication',
    ],
  ),
  FlutterQuiz(
    question: 'What is a StatefulWidget in Flutter?',
    correctAnswerIndex: 1,
    answers: [
      'A widget that cannot change its state',
      'A widget that can change its state over time',
      'A widget that is always in the same state',
      'A widget that manages state for other widgets',
    ],
  ),
  FlutterQuiz(
    question: 'What type of test can examine your code as a complete system?',
    correctAnswerIndex: 2,
    answers: [
      'Unit tests',
      'Widget tests',
      'Integration Tests',
      'All of the above',
    ],
  ),
  FlutterQuiz(
    question:
        'What type of animation allows to represent real-world behavior?',
    correctAnswerIndex: 0,
    answers: [
      'Physics-based',
      'Maths-based',
      'Graph-based',
      'Sim-based',
    ],
  ),
  FlutterQuiz(
    question:
        'What command is use to compile Flutter app in release mode?',
    correctAnswerIndex: 3,
    answers: [
      'Flutter run release',
      'Flutter --release',
      'Flutter build --release',
      'Flutter run --release',
    ],
  ),
  FlutterQuiz(
    question: 'Dart does not support _____',
    correctAnswerIndex: 2,
    answers: [
      'classes',
      'interfaces',
      'arrays',
      'object-oriented',
    ],
  ),
  FlutterQuiz(
    question: 'What is the purpose of the "main.dart" file?',
    correctAnswerIndex: 2,
    answers: [
      'To define the layout of the app',
      'To store images and assets',
      'To serve as the entry point for the Flutter app',
      'To manage user authentication',
    ],
  ),
  FlutterQuiz(
    question:
        "What language is Flutter's rendering engine primarily written in ____",
    correctAnswerIndex: 1,
    answers: [
      'C#',
      'C++',
      'Dart',
      'Kotlin',
    ],
  ),
  FlutterQuiz(
    question: 'What widget would you use for repeating content in Flutter?',
    correctAnswerIndex: 1,
    answers: [
      'ExpandedView',
      'ListView',
      'Stack',
      'ArrayView',
    ],
  ),
  FlutterQuiz(
    question:
        'When building for iOS, Flutter is restricted to an which compilation strategy',
    correctAnswerIndex: 0,
    answers: [
      'AOT (ahead-of-time)',
      'JIT (Just-in-time)',
      'Transcompilation',
      'Recompilation',
    ],
  ),
  FlutterQuiz(
    question:
        'Which programming language is used to build Flutter applications?',
    correctAnswerIndex: 2,
    answers: [
      'Kotlin',
      'Java',
      'Dart',
      'Go',
    ],
  ),
  FlutterQuiz(
    question:
        'Everything is a widget in Flutter. True or False?',
    correctAnswerIndex: 0,
    answers: [
      'True',
      'False',
    ],
  ),
];
