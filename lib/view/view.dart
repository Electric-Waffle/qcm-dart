import 'dart:io';
import '../model/question.dart';
import '../model/chapter.dart';

class TerminalView {

  String? prompt(String message) {
    print(
        "--------------------------------------------------------------------");
    printMessage(message);
    return stdin.readLineSync();
  }

  void promptQuestion(Question question, String chapterTitle) {

    // Affichage
    print("\n\n\n\n...  .-  ---  -=  ===  =[ $chapterTitle ]=  ===  =-  ---  -.  ... \n\n");
    print(question.label);
    print("\n");
    for (int i = 0 ; i < question.answers.length ; i++) {
      print("${i+1} - ${question.answers[i].label}");
    }
    print("\n");

  }

  void printMessage(String message) {
    print(message);
  }

  String? printGameOver(int score, int scoreTotal){
    print("\n\n\n\n\n\n\n\n...  .-  ---  -=  ===  =[ GAME OVER ]=  ===  =-  ---  -.  ... \n\n");
    print("       Votre score est de $score / $scoreTotal \n\n");
    print(
      "--------------------------------------------------------------------");
    print("Appuyez sur entrée pour continuer");
    return stdin.readLineSync();
  }

  void printMainMenu() {
    print("\n\n\n\n\n\n\n\n\n\n...  .-  ---  -=  ===  =[ Q C M ]=  ===  =-  ---  -.  ... \n\n");
    print("1 - Choix du chapitre ");
    print("2 - Quitter \n\n");
  }

  void printChapterMenu(List<Chapter> listeChapitres) {
    print("\n\n\n\n...  .-  ---  -=  ===  =[ CHOIX DU CHAPITRE ]=  ===  =-  ---  -.  ... \n\n");
    int i = 0;
    for (i ; i < listeChapitres.length; i++) {
      print("${i+1} - ${listeChapitres[i].title}");
    }
    print("\n${i+1} - Revenir au menu Principal \n\n");
  }
  
}
