import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sharafat_hassan/quiz_page.dart';

class PostContainer extends StatelessWidget {
  final child;
  final d_icon;

  PostContainer({
    required this.child,
    required this.d_icon,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
              height: 65,
              width: 65,
              decoration: BoxDecoration(
                  color: Colors.blue[50],
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(10)),
              child: d_icon),
          Text(
            child,
            style: TextStyle(fontSize: 15),
          )
        ],
      ),
    );
  }
}

class ListViewPractice extends StatelessWidget {
  final simple_icon;
  final tltle;
  final subtitle;

  ListViewPractice(
      {required this.simple_icon, required this.tltle, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 60,
        width: 250,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: ListTile(
          leading: simple_icon,
          title: tltle,
          subtitle: subtitle,
        ),
      ),
    );
  }
}

class MyWidget extends StatefulWidget {
  String quiz_value;
  bool iscorrect;

  MyWidget({
    required this.quiz_value,
    required this.iscorrect,
  });

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  Color ans_color = Colors.blue[200]!;

  @override
  void didUpdateWidget(covariant MyWidget oldWidget) {
    super.didUpdateWidget(oldWidget);

    // Check if the quiz_value or iscorrect property has changed
    if (widget.quiz_value != oldWidget.quiz_value ||
        widget.iscorrect != oldWidget.iscorrect) {
      // Reset the color to its default state or update the state based on the new properties
      setState(() {
        ans_color =
            Colors.blue[200]!; // Reset to default color, or set based on logic
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          if (widget.iscorrect == true) {
            ans_color = Colors.green;
          } else {
            ans_color = Colors.red;
          }

          // Check if an answer was selected

          // Check if the selected answer is correct
        });
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 50,
          width: 250,
          decoration: BoxDecoration(
              color: ans_color, borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(child: Text(widget.quiz_value)),
          ),
        ),
      ),
    );
  }
}

// class MyWidget extends StatefulWidget {
//   final String quiz_value;
//   final bool iscorrect;
//   final Key key;

//   MyWidget({
//     required this.quiz_value,
//     required this.iscorrect,
//     required this.key,
//   }) : super(key: key);

//   @override
//   State<MyWidget> createState() => _MyWidgetState();
// }

// class _MyWidgetState extends State<MyWidget> {
//   Color ans_color = Colors.blue[200]!;

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () {
//         setState(() {
//           ans_color = widget.iscorrect ? Colors.green : Colors.red;
//         });
//       },
//       child: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Container(
//           height: 50,
//           width: 250,
//           decoration: BoxDecoration(
//             color: ans_color,
//             borderRadius: BorderRadius.circular(10),
//           ),
//           child: Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Center(child: Text(widget.quiz_value)),
//           ),
//         ),
//       ),
//     );
//   }
// }

// MyWidget(
//   key: ValueKey(index),
//   quiz_value: element.answers,
//   iscorrect: element.iscorrect,
// )

// class QuizScore extends StatefulWidget {
//   final List<dynamic> ans_list;
//   final List<bool> correct_answer; // Specify the type

//   QuizScore({required this.ans_list, required this.correct_answer});

//   @override
//   State<QuizScore> createState() => _QuizScoreState();
// }

// class _QuizScoreState extends State<QuizScore> {
//   int score = 0; // Store the score as a state variable

//   @override
//   void initState() {
//     super.initState();
//     calculateScore(); // Calculate the score when the widget is initialized
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Quiz Score')),
//       body: Center(
//         child: Text(
//           'Your score: $score', // Display the score
//           style: TextStyle(fontSize: 24),
//         ),
//       ),
//     );
//   }

//   void calculateScore() {
//     int newScore = 0;

//     for (int i = 0; i < widget.ans_list.length; i++) {
//       // The condition widget.ans_list[i] == widget.correct_answer[i] assumes that both lists are of the same length.
//       if (widget.ans_list[i] == widget.correct_answer[i]) {
//         newScore++;
//       }
//     }

//     setState(() {
//       score = newScore; // Update the state variable
//     });
//   }
// }
