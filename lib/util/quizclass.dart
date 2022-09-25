class Question {
  late String questiontext;
  late String questionansA;
  late String questionansB;
  late String questionansC;
  Question({
    required String q,
    required String a,
    required String b,
    required String c,
  }) {
    questiontext = q;
    questionansA = a;
    questionansB = b;
    questionansC = c;
  }
}
