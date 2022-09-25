import 'package:quizz/util/quizclass.dart';

class Quizquestion {
  int _questionnumber = 0;
  //question and anser list
  final List<Question> _questiontext = [
    Question(
        q: 'What is the name of the tallest mountain in the world?',
        a: 'Mount Everest',
        b: 'mount kilimanjaro',
        c: 'k2'),
    Question(
        q: 'What is the official currency of the United Kingdom?',
        a: 'pound sterling',
        b: 'Dollar',
        c: 'Dinar'),
    Question(
        q: 'Which country is also called The Netherlands?',
        a: 'Holland',
        b: 'Hungry',
        c: 'Canada'),
    Question(
        q: 'What is the name of the river that flows through the Brazil rainforest?',
        a: 'The Amazon',
        b: 'Nississipi',
        c: 'Nile'),
    Question(
        q: 'What planet is closest to Earth?',
        a: 'Venus',
        b: 'Pluto',
        c: 'Mars'),
    Question(
        q: 'What country has the most natural lakes?',
        a: 'Canada',
        b: 'Argentina',
        c: 'Algeria'),
    Question(
        q: ' What is the capital of the American State of California?',
        a: 'Sacramento',
        b: 'San Diego',
        c: 'Los Angeles'),
    Question(
        q: 'What is the name of the smallest country in the world?',
        a: 'The Valitican city',
        b: 'Isreal',
        c: 'Monaco'),
    Question(
        q: 'What is the capital of Thailand?',
        a: 'Bangkok',
        b: 'Samut Prakan',
        c: 'Pathum Thani'),
    Question(
        q: 'What country are the Great Pyramids of Giza located in?',
        a: 'Egypt',
        b: 'kenya',
        c: 'Tanzania'),
    Question(
        q: 'What present-day Italian city does Mt. Vesuvius overlook?',
        a: 'Naples',
        b: 'Milan ',
        c: 'Rome'),
    Question(
        q: ' What is the name of the largest ocean in the world?',
        a: 'The Pacific ocean',
        b: 'Atlantic ocean ',
        c: 'Indian'),
    Question(
        q: 'What is the capital of Canada?',
        a: 'Ottawa',
        b: 'toronto',
        c: ' Ontario,'),
    Question(
        q: 'Where is the Eiffel Tower located?',
        a: 'Paris ,france',
        b: 'Marseille',
        c: 'Lyon'),
    Question(
        q: 'What U.S. state is home to no documented poisonous snakes?',
        a: 'alaska',
        b: 'Florida',
        c: 'texas'),
    Question(
        q: 'What is the name of the largest country in the world?',
        a: 'Russia',
        b: 'Canada',
        c: 'China'),
    Question(
        q: 'What is the capital of Mexico?',
        a: 'Mexico City',
        b: 'Yucatan',
        c: 'Sonora'),
    Question(
        q: 'What American city is the Golden Gate Bridge located in?',
        a: 'San francisco',
        b: 'San jose',
        c: 'San Diego'),
    Question(
        q: 'What is the name of the longest river in Africa?',
        a: 'The Nile river',
        b: 'Congo river',
        c: 'Niger'),
    Question(
        q: 'Which country has the largest population in the world?',
        a: 'china',
        b: 'India',
        c: 'United states'),
  ];
  //next question function
  void nextquestion() {
    if (_questionnumber < _questiontext.length - 1) {
      _questionnumber++;
    }
  }

//display question
  String getquestiontext() {
    return _questiontext[_questionnumber].questiontext;
  }

//display answer A
  String getanswertextA() {
    return _questiontext[_questionnumber].questionansA;
  }

//display answer b
  String getanswertextB() {
    return _questiontext[_questionnumber].questionansB;
  }

//display answer b
  String getanswertextC() {
    return _questiontext[_questionnumber].questionansC;
  }

//get answer
  String getcorrectanswer() {
    return _questiontext[_questionnumber].questionansA;
  }

//track when question isfinished
  bool isfinished() {
    if (_questionnumber >= _questiontext.length - 1) {
      return true;
    } else {
      return false;
    }
  }

//restart question
  void reset() {
    _questionnumber = 0;
  }
}
