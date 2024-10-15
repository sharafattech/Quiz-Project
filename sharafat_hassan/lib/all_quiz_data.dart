class Quiz {
  final question;
  List<Answer> ans_list;

  Quiz({required this.question, required this.ans_list});
}

class Answer {
  final answer;
  bool iscorrect;

  Answer({required this.answer, required this.iscorrect});
}

List<Quiz> all_quiz = [
  Quiz(question: 'What is the chemical symbol for Gold?', ans_list: [
    Answer(answer: 'Au', iscorrect: true),
    Answer(answer: 'Ag', iscorrect: false),
    Answer(answer: 'Pb', iscorrect: false),
    Answer(answer: 'Fe', iscorrect: false),
  ]),
  Quiz(question: 'What is the largest mammal in the world?', ans_list: [
    Answer(answer: 'African Elephant', iscorrect: false),
    Answer(answer: 'Giraffe', iscorrect: false),
    Answer(answer: 'White Shark', iscorrect: false),
    Answer(answer: 'Blue Whale', iscorrect: true),
  ]),
  Quiz(question: 'What year did the Titanic sink?', ans_list: [
    Answer(answer: '1912', iscorrect: true),
    Answer(answer: '1905', iscorrect: false),
    Answer(answer: '1923', iscorrect: false),
    Answer(answer: '1898', iscorrect: false),
  ]),
  Quiz(question: 'Which element has the atomic number 1?', ans_list: [
    Answer(answer: 'Hydrogen', iscorrect: true),
    Answer(answer: 'Helium', iscorrect: false),
    Answer(answer: 'Oxygen', iscorrect: false),
    Answer(answer: 'Carbon', iscorrect: false),
  ]),
  Quiz(
      question: 'Who was the first President of the United States?',
      ans_list: [
        Answer(answer: 'George Washington', iscorrect: true),
        Answer(answer: 'Thomas Jefferson', iscorrect: false),
        Answer(answer: 'Abraham Lincoln', iscorrect: false),
        Answer(answer: 'John Adams', iscorrect: false),
      ]),
  Quiz(question: 'What is the capital of Bangladesh?', ans_list: [
    Answer(answer: 'Dhaka', iscorrect: true),
    Answer(answer: 'Chittagong', iscorrect: false),
    Answer(answer: 'Khulna', iscorrect: false),
    Answer(answer: 'Sylhet', iscorrect: false),
  ]),
  Quiz(question: 'Who wrote the play "Romeo and Juliet"?', ans_list: [
    Answer(answer: 'William Shakespeare', iscorrect: true),
    Answer(answer: 'Charles Dickens', iscorrect: false),
    Answer(answer: 'George Orwell', iscorrect: false),
    Answer(answer: 'Mark Twain', iscorrect: false),
  ]),
  Quiz(question: 'Which planet is known as the Red Planet?', ans_list: [
    Answer(answer: 'Mars', iscorrect: true),
    Answer(answer: 'Venus', iscorrect: false),
    Answer(answer: 'Jupiter', iscorrect: false),
    Answer(answer: 'Saturn', iscorrect: false),
  ]),
  Quiz(question: 'What is the largest ocean on Earth?', ans_list: [
    Answer(answer: 'Pacific Ocean', iscorrect: true),
    Answer(answer: 'Atlantic Ocean', iscorrect: false),
    Answer(answer: 'Indian Ocean', iscorrect: false),
    Answer(answer: 'Arctic Ocean', iscorrect: false),
  ]),
  Quiz(question: 'Who painted the Mona Lisa?', ans_list: [
    Answer(answer: 'Leonardo da Vinci', iscorrect: true),
    Answer(answer: 'Vincent van Gogh', iscorrect: false),
    Answer(answer: 'Pablo Picasso', iscorrect: false),
    Answer(answer: 'Claude Monet', iscorrect: false),
  ]),
];
