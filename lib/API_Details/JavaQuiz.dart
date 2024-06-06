class JavaQuiz {
  final String question;
  final List<String> answers;
  final int correctAnswerIndex;

  JavaQuiz({
    required this.question,
    required this.answers,
    required this.correctAnswerIndex,
  });
}

List<JavaQuiz> questions = [
  JavaQuiz(
    question: 'What is the purpose of the\n"transient" keyword in Java?',
    correctAnswerIndex: 1,
    answers: [
      'Prevent serialization',
      'Exclude from serialization',
      'Immutable variable',
      'Private access restriction',
    ],
  ),
  JavaQuiz(
    question:
        'Which operator is used for conditional assignment in Java?',
    correctAnswerIndex: 3,
    answers: [
      '=',
      '==',
      ':=',
      '?:',
    ],
  ),
  JavaQuiz(
    question: 'What do you understand by "Polymorphism"?',
    correctAnswerIndex: 2,
    answers: [
      'Method adapts to the object it is called with',
      'Inheritance hierarchy of classes',
      'Method overriding',
      'Only applicable to variables of primitive data types',
    ],
  ),
  JavaQuiz(
    question: 'What is the purpose of the "volatile" keyword in Java?',
    correctAnswerIndex: 3,
    answers: [
      'To define a constant value',
      'To indicate that a method cannot be overridden',
      'To specify that a variable cannot be modified',
      "To indicate that a variable's value may be changed unexpectedly by multiple threads",
    ],
  ),
  JavaQuiz(
    question: 'What does JVM stand for?',
    correctAnswerIndex: 0,
    answers: [
      'Java Virtual Machine',
      'Java Variable Machine',
      'Java Visual Model',
      'Java Virtual Memory',
    ],
  ),
  JavaQuiz(
    question:
        'If "5 = 10", Evaluate the output:\nx++ + ++x - --x - x--',
    correctAnswerIndex: 1,
    answers: [
      '3',
      '-1',
      '2',
      '1',
    ],
  ),
  JavaQuiz(
    question: 'What is the purpose of the "super" keyword in Java?',
    correctAnswerIndex: 2,
    answers: [
      'To define a constant value',
      'To indicate that a method cannot be overridden',
      'To invoke the superclass constructor or method',
      'To specify that a variable cannot be modified',
    ],
  ),
  JavaQuiz(
    question:
        'Evaluate the output:\nSystem.out.println(3 * 0.1 == 0.3);',
    correctAnswerIndex: 1,
    answers: [
      'true',
      'false',
      'runtime error',
      'Compilation error',
    ],
  ),
  JavaQuiz(
    question: 'What is the purpose of the "throws" keyword in Java?',
    correctAnswerIndex: 1,
    answers: [
      'To specify that a method cannot be overridden',
      'To declare that a method may throw exceptions',
      'To indicate that a variable cannot be modified',
      'To define a constant value',
    ],
  ),
  JavaQuiz(
    question: 'What is Truncation in Java?',
    correctAnswerIndex: 1,
    answers: [
      'Floating-point value assigned to a Floating type',
      'Floating-point value assigned to an integer type',
      'Integer value assigned to floating type',
      'Integer value assigned to floating type',
    ],
  ),
  JavaQuiz(
    question: 'What is the purpose of the "abstract" keyword',
    correctAnswerIndex: 2,
    answers: [
      'To define a constant value',
      'To indicate that a method cannot be overridden',
      'To declare a class/method as incomplete',
      'To specify that a variable cannot be modified',
    ],
  ),
  JavaQuiz(
    question:
        'If "x = 10", Evaluate the output:\nSystem.out.println(x == x++);',
    correctAnswerIndex: 0,
    answers: [
      'true',
      'false',
      'Compilation error',
      'Runtime error',
    ],
  ),
  JavaQuiz(
    question: 'Which of the following is a valid declaration of a \"char\"?',
    correctAnswerIndex: 0,
    answers: [
      " char ch = '\\utea';",
      "char ca = 'tea';",
      "char cr = \\u0223;",
      "char cc = '\\itea';"
    ],
  ),
  JavaQuiz(
    question: ' ____ is used to find and fix bugs in the Java programs.',
    correctAnswerIndex: 3,
    answers: [
      "JVM",
      "JRE",
      "JDK",
      "JDB"
    ],
  ),
  JavaQuiz(
    question: 'What is the purpose of the "interface" keyword in Java?',
    correctAnswerIndex: 3,
    answers: [
      'To define a constant value',
      'To indicate that a method cannot be overridden',
      'To declare a class that to be implemented by subclasses',
      'To define a constructor for classes to implement',
    ],
  ),
  JavaQuiz(
    question:
        'What is the return type of the hashCode() in the Object class?',
    correctAnswerIndex: 1,
    answers: [
    "Object",
    "int",
    "long",
    "void",
    ],
  ),
  JavaQuiz(
    question:
        'In which process, a local variable has the same name as instance variables?',
    correctAnswerIndex: 1,
    answers: [
      "Serialization",
      "Variable Shadowing",
      "Abstraction",
      "Multi-threading"
    ],
  ),
  JavaQuiz(
    question: 'What is the purpose of the "this" keyword in Java?',
    correctAnswerIndex: 2,
    answers: [
      'Define a constant value',
      'Indicate that a method cannot be overridden',
      'Refer to the current instance of the class',
      'Specify that a variable cannot be modified',
    ],
  ),
  JavaQuiz(
    question: 'What is the purpose of the "instanceof" operator in Java?',
    correctAnswerIndex: 3,
    answers: [
      'To compare two objects for equality',
      'To assign a value to a variable',
      'To declare a constant',
      'To check if an object is an instance of a particular class/interface',
    ],
  ),
  JavaQuiz(
    question:
        'Which of the following is true about the anonymous inner class?',
    correctAnswerIndex: 0,
    answers: [
      "It has only methods",
      "Objects can't be created",
      "It has a fixed class name",
      "It has no class name"
    ],
  ),
];
