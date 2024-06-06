class LinuxQuiz {
  final String question;
  final List<String> answers;
  final int correctAnswerIndex;

  LinuxQuiz({
    required this.question,
    required this.answers,
    required this.correctAnswerIndex,
  });
}

List<LinuxQuiz> questions = [
  LinuxQuiz(
    question: 'What command is used for moving and renaming files/directories?',
    correctAnswerIndex: 0,
    answers: [
      'mv',
      'touch',
      'cp',
      'chmod',
    ],
  ),
  LinuxQuiz(
    question: "What is the use of \"grep\" command?",
    correctAnswerIndex: 3,
    answers: [
      'To concatenate and display files',
      'To change the permissions of a file/directory',
      'To terminate processes by process ID',
      'To search for a pattern in files and print matching lines',
    ],
  ),
  LinuxQuiz(
    question: 'What does the command \"wc -l\" do?',
    correctAnswerIndex: 2,
    answers: [
      'Count the number of words in a file',
      'Count the number of lines in a file',
      'Count the number of lines in a file and display the result',
      'Display only the last line of a file',
    ],
  ),
  LinuxQuiz(
    question:
        'What command displays disk space usage information?',
    correctAnswerIndex: 2,
    answers: [
      'ps',
      'top',
      'df',
      'du',
    ],
  ),
  LinuxQuiz(
    question: 'What is the purpose of the \"sudo\" command?',
    correctAnswerIndex: 2,
    answers: [
      'To create an empty file or update the access and modification times of a file',
      'To display information about active processes',
      'To perform tasks with superuser (root) privileges',
      'To change the owner of a file or directory',
    ],
  ),
  LinuxQuiz(
    question: 'What is the function of the \"tar\" command?',
    correctAnswerIndex: 3,
    answers: [
      'To concatenate and display files',
      'To display information about system resource usage and running processes',
      'To change the permissions of a file or directory',
      'To archive files and directories into a single file',
    ],
  ),
  LinuxQuiz(
    question: 'What is a fundamental concept of Linux?',
    correctAnswerIndex: 1,
    answers: [
      'Proprietary software',
      'Command-line interface',
      'Graphical user interface',
      'Single-user capability',
    ],
  ),
  LinuxQuiz(
    question:
        "What is a benefit of Linux's modular design and robust architecture?",
    correctAnswerIndex: 2,
    answers: [
      'Increased complexity',
      'Higher cost',
      'Improved stability and reliability',
      'Limited hardware support',
    ],
  ),
  LinuxQuiz(
    question: 'What is the purpose of the \"cd\" command in Linux?',
    correctAnswerIndex: 1,
    answers: [
      'To create a new directory',
      'To change directory',
      'To remove a file',
      'To list directory contents',
    ],
  ),
  LinuxQuiz(
    question: 'How to delete a directory in Linux?',
    correctAnswerIndex: 2,
    answers: [
      'remove',
      'del',
      'rmdir',
      'ls',
    ],
  ),
  LinuxQuiz(
    question: 'The \" /etc/shadow \" file in Linux is used to store:',
    correctAnswerIndex: 2,
    answers: [
      'root user shell',
      'various password information',
      'store encrypted password hashes',
      'filesystem information',
    ],
  ),
  LinuxQuiz(
    question:
        'Which key will terminates the current process in the Linux shell?',
    correctAnswerIndex: 2,
    answers: [
      'Ctrl + A',
      'Ctrl + D',
      'Ctrl + Z',
      'Ctrl + F',
    ],
  ),
  LinuxQuiz(
    question: 'Who designed the Linux OS?',
    correctAnswerIndex: 3,
    answers: [
      'Steve Wozniak',
      'Steve Jobs',
      'Steve Linus',
      'Linus Torvalds',
    ],
  ),
  LinuxQuiz(
    question:
        'What command displays the contents of a file in reverse order?',
    correctAnswerIndex: 2,
    answers: [
      'tail',
      'cat',
      'tac',
      'less',
    ],
  ),
  LinuxQuiz(
    question: 'Which command is used to create a symbolic link?',
    correctAnswerIndex: 0,
    answers: [
      'ln -s',
      'ln',
      'sym',
      'link',
    ],
  ),
  LinuxQuiz(
    question: 'Which directory contains log files in Linux?',
    correctAnswerIndex: 3,
    answers: [
      '/log',
      '/var/log',
      '/sys/log',
      '/var/syslog',
    ],
  ),
  LinuxQuiz(
    question: 'What is the purpose of the "export" command in Linux?',
    correctAnswerIndex: 1,
    answers: [
      'Export files from one directory to another',
      'Set environment variables',
      'Display the contents of a file',
      'Change file permissions',
    ],
  ),
  LinuxQuiz(
    question:
        'What command changes the owner of a file or directory in Linux?',
    correctAnswerIndex: 0,
    answers: [
      'chown',
      'chmod',
      'chgrp',
      'own',
    ],
  ),
  LinuxQuiz(
    question: 'What does the "ifconfig" command: ',
    correctAnswerIndex: 3,
    answers: [
      'Configure network interfaces',
      'Display system configuration',
      'Print file contents',
      'Display or configure network interface parameters',
    ],
  ),
  LinuxQuiz(
    question: 'Which command is used to kill a process in Linux?',
    correctAnswerIndex: 2,
    answers: [
      'stop',
      'end',
      'kill',
      'terminate',
    ],
  )
];
