import './answer.dart';
import 'dart:math';

class Question {
  int id;
  String label;

  Question(this.id, this.label);

  late List<Answer> answers;

  // Méthode pour setter et mélanger les réponses
  void setAnswers(List<Answer> newAnswers) {
    // Créer une copie pour ne pas modifier la liste originale
    List<Answer> shuffled = List.from(newAnswers);
    shuffled.shuffle(Random()); // Mélange aléatoire
    answers = shuffled;
  }
}