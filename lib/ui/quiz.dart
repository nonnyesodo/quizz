import 'package:flutter/material.dart';

import 'package:quizz/util/quizquestion.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

Quizquestion quizquestion = Quizquestion();

class Quiz extends StatefulWidget {
  const Quiz({Key? key}) : super(key: key);

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  int scorekeper = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quizzapp'),
        backgroundColor: Colors.purple,
        centerTitle: true,
      ),
      backgroundColor: Colors.purple,
      //background image
      body: Container(
        padding: const EdgeInsets.all(10.0),
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/background.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            //dispaly question
            Expanded(
              flex: 2,
              child: Card(
                margin: const EdgeInsets.all(10.0),
                color: Colors.deepPurple,
                child: Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: Text(
                    quizquestion.getquestiontext(),
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontStyle: FontStyle.italic),
                  ),
                ),
              ),
            ),
            //space between
            const SizedBox(
              height: 200,
            ),

            Expanded(
              child: ElevatedButton(
                onPressed: () {
                  checkanswer(quizquestion.getanswertextA());
                },
                child: Text(
                  quizquestion.getanswertextA(),
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontStyle: FontStyle.italic),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: ElevatedButton(
                onPressed: () {
                  checkanswer(quizquestion.getanswertextB());
                },
                child: Text(
                  quizquestion.getanswertextB(),
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontStyle: FontStyle.italic),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: ElevatedButton(
                onPressed: () {
                  checkanswer(quizquestion.getanswertextC());
                },
                child: Text(
                  quizquestion.getanswertextC(),
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontStyle: FontStyle.italic),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void checkanswer(String userpickedanswer) {
    String correctanswer = quizquestion.getcorrectanswer();
    setState(() {
      if (quizquestion.isfinished() == true) {
        Alert(
          context: context,
          title: "finished",
          desc: "you have reached the end.\n score:$scorekeper",
        ).show();
        quizquestion.reset();
        scorekeper = 0;
      } else {
        if (correctanswer == userpickedanswer) {
          scorekeper++;
        } else {}

        quizquestion.nextquestion();
      }
    });
  }
}
