class PgSqlQuiz {
  final String question;
  final List<String> answers;
  final int correctAnswerIndex;

  PgSqlQuiz({
    required this.question,
    required this.answers,
    required this.correctAnswerIndex,
  });
}

List<PgSqlQuiz> questions = [
  PgSqlQuiz(
    question: 'Which statement is used to create a new PostgreSQL database?',
    correctAnswerIndex: 1,
    answers: [
      'CREATE DATABASE',
      'CREATE DATABASE NAME',
      'NEW DATABASE',
      'ADD DATABASE',
    ],
  ),
  PgSqlQuiz(
    question: 'Which command is used to connect to a PostgreSQL database?',
    correctAnswerIndex: 0,
    answers: [
      'psql',
      'connect',
      'db_connect',
      'pg_connect',
    ],
  ),
  PgSqlQuiz(
    question: 'What is the purpose of the SELECT statement in PostgreSQL?',
    correctAnswerIndex: 2,
    answers: [
      'To update records in a table',
      'To delete records from a table',
      'To retrieve data from a table',
      'To insert records into a table',
    ],
  ),
  PgSqlQuiz(
    question:
        'Which data type is used to store a date and time value in PostgreSQL?',
    correctAnswerIndex: 3,
    answers: [
      'INTEGER',
      'BOOLEAN',
      'VARCHAR',
      'TIMESTAMP',
    ],
  ),
  PgSqlQuiz(
    question:
        'Purpose of the \"WHERE\" clause in a SELECT statement: ',
    correctAnswerIndex: 1,
    answers: [
      'To specify the columns to be selected',
      'To filter rows based on a condition',
      'To order the result set',
      'To join multiple tables',
    ],
  ),
  PgSqlQuiz(
    question: 'Which statement is used to create a new table in PostgreSQL?',
    correctAnswerIndex: 0,
    answers: [
      'CREATE TABLE',
      'NEW TABLE',
      'ADD TABLE',
      'DEFINE TABLE',
    ],
  ),
  PgSqlQuiz(
    question:
        'Purpose of the \"GROUP BY\" clause in a SELECT statement:',
    correctAnswerIndex: 3,
    answers: [
      'To delete duplicate rows from the result set',
      'To update records in a table',
      'To filter rows based on a condition',
      'To group rows based on a column or columns',
    ],
  ),
  PgSqlQuiz(
    question: 'Which operator is used for pattern matching in PostgreSQL?',
    correctAnswerIndex: 2,
    answers: [
      'LIKE',
      'EQUALS',
      'ILIKE',
      'NOT LIKE',
    ],
  ),
  PgSqlQuiz(
    question:
        'Purpose of the "ORDER BY" clause in a SELECT statement:',
    correctAnswerIndex: 0,
    answers: [
      'To sort the result set based on one or more columns',
      'To filter rows based on a condition',
      'To group rows based on a column or columns',
      'To join multiple tables',
    ],
  ),
  PgSqlQuiz(
    question: 'Which command is used to delete a table in PostgreSQL?',
    correctAnswerIndex: 1,
    answers: [
      'DROP',
      'DROP TABLE',
      'DELETE',
      'REMOVE TABLE',
    ],
  ),
  PgSqlQuiz(
    question:
        'Purpose of the "HAVING" clause in a SELECT statement:',
    correctAnswerIndex: 2,
    answers: [
      'To update records in a table',
      'To delete records from a table',
      'To filter groups based on a condition',
      'To insert records into a table',
    ],
  ),
  PgSqlQuiz(
    question: 'Which keyword is used to update records in a PostgreSQL table?',
    correctAnswerIndex: 3,
    answers: [
      'MODIFY',
      'ALTER',
      'CHANGE',
      'UPDATE',
    ],
  ),
  PgSqlQuiz(
    question:
        'Purpose of the "LIMIT" clause in a SELECT statement:',
    correctAnswerIndex: 1,
    answers: [
      'To order the result set',
      'To limit the number of rows returned',
      'To specify the columns to be selected',
      'To join multiple tables',
    ],
  ),
  PgSqlQuiz(
    question: 'Which operator is used to concatenate strings in PostgreSQL?',
    correctAnswerIndex: 0,
    answers: [
      '||',
      '+',
      '&',
      'CONCAT',
    ],
  ),
  PgSqlQuiz(
    question: 'Purpose of the "INSERT INTO" statement in PostgreSQL:',
    correctAnswerIndex: 2,
    answers: [
      'To retrieve data from a table',
      'To update records in a table',
      'To insert records into a table',
      'To delete records from a table',
    ],
  ),
  PgSqlQuiz(
    question:
        'Which function is used to calculate the average value of a column?',
    correctAnswerIndex: 3,
    answers: [
      'MIN',
      'MAX',
      'SUM',
      'AVG',
    ],
  ),
  PgSqlQuiz(
    question: 'What is the purpose of the "SERIAL" data type?',
    correctAnswerIndex: 1,
    answers: [
      'To store binary data',
      'To automatically generate unique integer values',
      'To store text data',
      'To store boolean values',
    ],
  ),
  PgSqlQuiz(
    question: 'Which statement is used to create a new index in PostgreSQL?',
    correctAnswerIndex: 0,
    answers: [
      'CREATE INDEX',
      'NEW INDEX',
      'ADD INDEX',
      'DEFINE INDEX',
    ],
  ),
  PgSqlQuiz(
    question:
        'What is the purpose of the "TRUNCATE TABLE" statement?',
    correctAnswerIndex: 2,
    answers: [
      'To update records in a table',
      'To delete records from a table',
      'To remove all rows from a table',
      'To insert records into a table',
    ],
  ),
  PgSqlQuiz(
    question:
        'Which data type is used to store a fixed-length string in PostgreSQL?',
    correctAnswerIndex: 1,
    answers: [
      'INTEGER',
      'CHAR',
      'VARCHAR',
      'TEXT',
    ],
  ),
];
