import './answer.dart';

class Question {
  int id;
  String label;

  Question(this.id, this.label);

  late List<Answer> answers;
}