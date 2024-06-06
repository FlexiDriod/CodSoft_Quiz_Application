class CplusPlus {
  final String question;
  final List<String> answers;
  final int correctAnswerIndex;

  CplusPlus({
    required this.question,
    required this.answers,
    required this.correctAnswerIndex,
  });
}

List<CplusPlus> questions = [
  CplusPlus(
    question: 'What is the syntax for declaring a variable in C++?',
    correctAnswerIndex: 0,
    answers: [
      'dataType variableName;',
      'variableName = value;',
      'variableName dataType;',
      'value = variableName;',
    ],
  ),
  CplusPlus(
    question: 'What is the use of "cin" in C++?',
    correctAnswerIndex: 1,
    answers: [
      'To print output to the console',
      'To accept input from the user',
      'To define a class',
      'To include a header file',
    ],
  ),
  CplusPlus(
    question: 'What does the keyword "new" do?',
    correctAnswerIndex: 2,
    answers: [
      'Deletes memory allocated for a variable',
      'Reserves space for a variable on the stack',
      'Allocates memory for a variable on the heap',
      'Initializes a variable',
    ],
  ),
  CplusPlus(
    question: 'What is the purpose of the "this" pointer in C++?',
    correctAnswerIndex: 3,
    answers: [
      'To reference the parent class',
      'To define a constant',
      'To access a static member',
      'To refer to the object itself',
    ],
  ),
  CplusPlus(
    question: 'What does the "virtual" keyword indicate in C++?',
    correctAnswerIndex: 0,
    answers: [
      'That a function may be overridden in derived classes',
      'That a function cannot be overridden',
      'That a function is static',
      'That a function is pure virtual',
    ],
  ),
  CplusPlus(
    question: 'Which data type is used to store a single character in C++?',
    correctAnswerIndex: 1,
    answers: [
      'int',
      'char',
      'string',
      'bool',
    ],
  ),
  CplusPlus(
    question: 'What is the purpose of the "static" keyword in C++?',
    correctAnswerIndex: 2,
    answers: [
      'To allocate memory dynamically',
      'To make a variable accessible only within a function',
      'To create class-level variables and methods',
      'To prevent inheritance',
    ],
  ),
  CplusPlus(
    question: 'What is the purpose of the "const" keyword in C++?',
    correctAnswerIndex: 3,
    answers: [
      'To define a constant value',
      'To declare a variable as static',
      'To create a pointer',
      'To make a variable immutable',
    ],
  ),
  CplusPlus(
    question: 'What is the difference between "++i" and "i++" in C++?',
    correctAnswerIndex: 0,
    answers: [
      '++i increments the value of i and then returns it, while i++ returns the value of i and then increments it',
      'Both increment the value of i but ++i is used for integers and i++ is used for floats',
      '++i decrements the value of i and then returns it, while i++ returns the value of i and then decrements it',
      'There is no difference, they are interchangeable',
    ],
  ),
  CplusPlus(
    question: 'What is the purpose of the "break" statement in C++?',
    correctAnswerIndex: 1,
    answers: [
      'To exit a loop immediately',
      'To exit a loop or switch statement immediately',
      'To skip the current iteration of a loop',
      'To continue to the next iteration of a loop',
    ],
  ),
  CplusPlus(
    question: 'What does the "sizeof" operator return in C++?',
    correctAnswerIndex: 2,
    answers: [
      'The memory address of a variable',
      'The data type of a variable',
      'The size in bytes of a variable or data type',
      'The value of a variable',
    ],
  ),
  CplusPlus(
    question: 'What is the purpose of the "namespace" keyword in C++?',
    correctAnswerIndex: 3,
    answers: [
      'To define a class',
      'To declare a variable',
      'To include a header file',
      'To avoid naming conflicts',
    ],
  ),
  CplusPlus(
    question: 'How are arrays initialized in C++?',
    correctAnswerIndex: 0,
    answers: [
      'By specifying the size and listing the elements within curly braces',
      'By using the "array" keyword followed by elements separated by commas',
      'By using the "init" keyword followed by elements separated by semicolons',
      'By declaring each element individually',
    ],
  ),
  CplusPlus(
    question: 'What is a destructor in C++?',
    correctAnswerIndex: 1,
    answers: [
      'A function that creates objects',
      'A special member function that is called when an object goes out of scope or is deleted',
      'A function that deallocates memory',
      'A function that overloads operators',
    ],
  ),
  CplusPlus(
    question: 'What is the purpose of the\n"friend" keyword in C++?',
    correctAnswerIndex: 2,
    answers: [
      'To define a function',
      'To declare a class',
      'To grant access to private members of a class',
      'To create a static variable',
    ],
  ),
  CplusPlus(
    question: 'How do you declare a pointer?',
    correctAnswerIndex: 3,
    answers: [
      'int *ptr;',
      'ptr = &variable;',
      'int ptr;',
      'int* ptr;',
    ],
  ),
  CplusPlus(
    question: 'What is function overloading?',
    correctAnswerIndex: 0,
    answers: [
      'Defining multiple functions with the same name but different parameters',
      'Defining a function inside another function',
      'Defining a function with no return type',
      'Defining a function that takes a variable number of arguments',
    ],
  ),
  CplusPlus(
    question: 'What is an abstract class?',
    correctAnswerIndex: 1,
    answers: [
      'A class that cannot be instantiated',
      'A class that contains at least one pure virtual function',
      'A class that is declared within another class',
      'A class that has only private members',
    ],
  ),
  CplusPlus(
    question: 'What is the purpose of the "inline" keyword in C++?',
    correctAnswerIndex: 2,
    answers: [
      'To define a constant value',
      'To include a header file',
      'To suggest the compiler to insert the function code directly where the function call is made',
      'To make a function accessible only within a class',
    ],
  ),
  CplusPlus(
    question: 'How are functions passed as arguments in C++?',
    correctAnswerIndex: 3,
    answers: [
      'By passing the function name as a string',
      'By declaring the function as a global variable',
      'By defining the function within the main function',
      'By using function pointers',
    ],
  ),
];
