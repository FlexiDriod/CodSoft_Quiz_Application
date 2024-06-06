class PhpQuiz {
  final String question;
  final List<String> answers;
  final int correctAnswerIndex;

  PhpQuiz({
    required this.question,
    required this.answers,
    required this.correctAnswerIndex,
  });
}

List<PhpQuiz> questions = [
  PhpQuiz(
    question: 'What does PHP stand for?',
    correctAnswerIndex: 3,
    answers: [
      'Personal Home Page',
      'Preprocessed Hypertext Processor',
      'Pretty Hypertext Preprocessor',
      'PHP: Hypertext Preprocessor',
    ],
  ),
  PhpQuiz(
    question: 'Which of the following is NOT a PHP data type?',
    correctAnswerIndex: 1,
    answers: [
      'String',
      'Float',
      'Array',
      'Object',
    ],
  ),
  PhpQuiz(
    question: 'What is the correct way to start a PHP block?',
    correctAnswerIndex: 0,
    answers: [
      '<?php',
      '<?',
      '<&',
      '<script',
    ],
  ),
  PhpQuiz(
    question:
        'Which of the following is used to comment out a single line in PHP?',
    correctAnswerIndex: 2,
    answers: [
      '//',
      '/* */',
      '#',
      '--',
    ],
  ),
  PhpQuiz(
    question: 'Which function is used to output text in PHP?',
    correctAnswerIndex: 3,
    answers: [
      'print',
      'echo',
      'printf',
      'All of the above',
    ],
  ),
  PhpQuiz(
    question: 'Which of the following is used to concatenate strings in PHP?',
    correctAnswerIndex: 1,
    answers: [
      '.',
      '+',
      '+=',
      ',',
    ],
  ),
  PhpQuiz(
    question: 'What is the correct way to include an external PHP file?',
    correctAnswerIndex: 3,
    answers: [
      'include "file.php"',
      'require_once "file.php"',
      'import "file.php"',
      'All of the above',
    ],
  ),
  PhpQuiz(
    question: 'What is the purpose of the \$_GET superglobal in PHP?',
    correctAnswerIndex: 0,
    answers: [
      'To retrieve data sent in the URL',
      'To store form data submitted with the POST method',
      'To access server environment variables',
      'To store session data',
    ],
  ),
  PhpQuiz(
    question: 'Which of the following is used to start a session in PHP?',
    correctAnswerIndex: 3,
    answers: [
      'session_start()',
      'start_session()',
      'init_session()',
      'session_start() or start_session()',
    ],
  ),
  PhpQuiz(
    question:
        'What is the correct way to access an element in an associative array?',
    correctAnswerIndex: 2,
    answers: [
      '\$array[index]',
      '\$array->index',
      '\$array["index"]',
      'All of the above',
    ],
  ),
  PhpQuiz(
    question:
        'Which of the following is used to redirect the user to a different URL?',
    correctAnswerIndex: 1,
    answers: [
      'header("Location: new_url")',
      'header("Redirect: new_url")',
      'redirect("new_url")',
      'navigate("new_url")',
    ],
  ),
  PhpQuiz(
    question: 'What is the purpose of the isset() function in PHP?',
    correctAnswerIndex: 2,
    answers: [
      'To check if a variable is empty',
      'To check if a variable is null',
      'To check if a variable is set and not null',
      'To check if a variable is numeric',
    ],
  ),
  PhpQuiz(
    question: 'What does PEAR stands for?',
    correctAnswerIndex: 0,
    answers: [
      'PHP extension and application repository',
      'PHP event and application repository',
      'PHP enhancement and application reduce',
      'None of the above',
    ],
  ),
  PhpQuiz(
    question: 'What is the correct way to write a function in PHP?',
    correctAnswerIndex: 2,
    answers: [
      'function myFunction() { }',
      'def myFunction():',
      'function myFunction(): void { }',
      'public function myFunction() { }',
    ],
  ),
  PhpQuiz(
    question: 'What is the purpose of the count() function in PHP?',
    correctAnswerIndex: 0,
    answers: [
      'To get the number of elements in an array',
      'To convert a string to uppercase',
      'To calculate the square root of a number',
      'To check if the current user is an administrator',
    ],
  ),
  PhpQuiz(
    question: 'Which of the following is used to handle file uploads in PHP?',
    correctAnswerIndex: 1,
    answers: [
      '\$_POST',
      '\$_FILES',
      '\$_GET',
      '\$_SESSION',
    ],
  ),
  PhpQuiz(
    question: 'What is the purpose of the \$_SESSION superglobal in PHP?',
    correctAnswerIndex: 2,
    answers: [
      'To retrieve data sent in the URL',
      'To store form data submitted with the POST method',
      'To store session data',
      'To access server environment variables',
    ],
  ),
  PhpQuiz(
    question: 'Which of the following is used to execute a SQL query in PHP?',
    correctAnswerIndex: 3,
    answers: [
      'mysqli_query()',
      'mysql_query()',
      'pg_query()',
      'All of the above',
    ],
  ),
  PhpQuiz(
    question: 'What is the purpose of the PDO extension in PHP?',
    correctAnswerIndex: 1,
    answers: [
      'To handle file uploads',
      'To provide a consistent interface for accessing databases',
      'To handle XML data',
      'To manipulate images',
    ],
  ),
  PhpQuiz(
    question: 'Who is known as the father of PHP?',
    correctAnswerIndex: 2,
    answers: [
      'Drek Kolkevi',
      'List Barely',
      'Rasmus Lerdrof',
      'None of the above',
    ],
  )
];
