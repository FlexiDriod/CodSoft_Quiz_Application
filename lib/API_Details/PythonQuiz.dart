class PythonQuiz {
  final String question;
  final List<String> answers;
  final int correctAnswerIndex;

  PythonQuiz({
    required this.question,
    required this.answers,
    required this.correctAnswerIndex,
  });
}

List<PythonQuiz> questions = [
  PythonQuiz(
    question: 'What does the "pass" statement do in Python?',
    correctAnswerIndex: 2,
    answers: [
      'Terminates the current loop',
      'Raises an exception',
      'Acts as a placeholder, doing nothing when executed',
      'Returns a value from a function',
    ],
  ),
  PythonQuiz(
    question: 'What is the purpose of using the "lambda" keyword in Python?',
    correctAnswerIndex: 3,
    answers: [
      'To create a multiline string',
      'To declare a constant',
      'To define a list comprehension',
      'To create anonymous functions',
    ],
  ),
  PythonQuiz(
    question: '_____ is a simple but incomplete version of a function.',
    correctAnswerIndex: 2,
    answers: [
      'Stub',
      'Function',
      'A function developed using bottom-up approach',
      'A function developed using top-down approach',
    ],
  ),
  PythonQuiz(
    question: 'What does the "enumerate()" function in Python do?',
    correctAnswerIndex: 0,
    answers: [
      'Adds a counter to an iterable and returns it as an enumerate object',
      'Returns the maximum value in an iterable',
      'Returns the sum of all elements in an iterable',
      'Sorts the elements of an iterable in ascending order',
    ],
  ),
  PythonQuiz(
    question: 'What is the purpose of the "yield" keyword in Python?',
    correctAnswerIndex: 1,
    answers: [
      'To raise a custom exception',
      'To return a value from a generator function without terminating it',
      'To break out of a loop',
      'To define a decorator function',
    ],
  ),
  PythonQuiz(
    question: 'What does the "with" statement do in Python?',
    correctAnswerIndex: 2,
    answers: [
      'Defines a context manager for resource management',
      'Declares a class',
      'Simplifies exception handling by automatically closing resources',
      'Allows the use of "try" and "except" blocks',
    ],
  ),
  PythonQuiz(
    question:
        'What is the output of the following code? \n\nprint((lambda x: (x := x + 1))(1))',
    correctAnswerIndex: 0,
    answers: [
      '2',
      '1',
      'SyntaxError: cannot use assignment expressions with lambda',
      'NameError: name \'x\' is not defined',
    ],
  ),
  PythonQuiz(
    question: 'What is "setattr()" used for?',
    correctAnswerIndex: 3,
    answers: [
      'To remove an attribute from an object',
      'To create a new attribute in an object',
      'To get the value of an attribute from an object',
      'To set the value of an attribute in an object',
    ],
  ),
  PythonQuiz(
    question: 'What does the "globals()" function return in Python?',
    correctAnswerIndex: 0,
    answers: [
      'A dictionary representing the global symbol table',
      'A list of all the built-in functions',
      'The current working directory',
      'The contents of the current module',
    ],
  ),
  PythonQuiz(
    question: 'What does ~~~~~~5 evaluate to?',
    correctAnswerIndex: 1,
    answers: [
      '+5',
      '-11',
      '+11',
      '-5',
    ],
  ),
  PythonQuiz(
    question: 'What is the purpose of the "super()" function in Python?',
    correctAnswerIndex: 3,
    answers: [
      'To create an instance of a superclass',
      'To access the parent class attributes',
      'To declare a constant',
      'To call methods of the superclass in a subclass',
    ],
  ),
  PythonQuiz(
    question: 'Which module in Python supports regular expressions?',
    correctAnswerIndex: 3,
    answers: [
      'reg',
      'regex',
      'pyregex',
      're',
    ],
  ),
  PythonQuiz(
    question: 'Which of the following is correct about Python?',
    correctAnswerIndex: 2,
    answers: [
      'It supports automatic garbage collection.',
      'It can be easily integrated with C, C++, COM, ActiveX, CORBA, and Java',
      'Both of the above',
      'None of the above',
    ],
  ),
  PythonQuiz(
    question: 'What is the output: \n\nprint(1 and 2 and 3)',
    correctAnswerIndex: 0,
    answers: [
      '3',
      '1',
      '2',
      '0',
    ],
  ),
  PythonQuiz(
    question: 'Purpose of the "next()" function in Python?',
    correctAnswerIndex: 1,
    answers: [
      'To return the current date and time',
      'To retrieve the next item from an iterator',
      'To find the next occurrence of a specified value in an iterable',
      'To return the next index of an item in a list',
    ],
  ),
  PythonQuiz(
    question:
        'What is the output of the following program : \n print "Hello World"[::-1]',
    correctAnswerIndex: 0,
    answers: [
      'dlroW olleH',
      'Hello Worl',
      'Error',
      'dlrow',
    ],
  ),
  PythonQuiz(
    question: 'Purpose of the "sorted()" function in Python?',
    correctAnswerIndex: 0,
    answers: [
      'To return a new sorted list from the elements of an iterable',
      'To reverse the order of elements in a list',
      'To shuffle the elements of a list randomly',
      'To remove duplicates from a list',
    ],
  ),
  PythonQuiz(
    question: 'list, tuple, and range are the ___ of Data Types.',
    correctAnswerIndex: 0,
    answers: [
      "Array Types",
      "Binary Types",
      "Boolean Types",
      "Sequence Types",
    ],
  ),
  PythonQuiz(
    question: 'Who is the developer of Python programming?',
    correctAnswerIndex: 0,
    answers: [
      'Guido van Rossum',
      'Denis Ritchie',
      'Y.C. Khenderakar',
      'None of the mentioned above',
    ],
  ),
  PythonQuiz(
    question: 'What is getattr() used for?',
    correctAnswerIndex: 0,
    answers: [
      'To access the attribute of the object',
      'To delete an attribute',
      'To check if an attribute exists or not',
      'To set an attribute',
    ],
  ),
];
