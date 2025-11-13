import 'dart:io';
import '../model/question.dart';

class TerminalView {

  String? prompt(String message) {
    print(
        "--------------------------------------------------------------------");
    printMessage(message);
    return stdin.readLineSync();
  }

  String? promptQuestion(Question question) {

    // Affichage
    print(question.text);
    for (int i = 0 ; i < question.answers.length ; i++) {
      print("${i+1} - ${question.answers[i].text}");
    }
    print(
      "--------------------------------------------------------------------");

    return stdin.readLineSync();
    
  }

  void printMessage(String message) {
    print(message);
  }

  void printMainMenu() {
    print("...  .-  ---  -=  ===  =[ Q C M ]=  ===  =-  ---  -.  ... \n\n");
    print("1 - Choix du chapitre ");
    print("2 - Quitter \n\n");
  }

  void printChapterMenu() {
    print("...  .-  ---  -=  ===  =[ CHOIX DU CHAPITRE ]=  ===  =-  ---  -.  ... \n\n");
    print("1 - Chapitre 1\n");
    print("2 - Chapitre 2");
    print("3 - Chapitre 3");
    print("4 - Chapitre 4");
    print("5 - Chapitre 5");
    print("6 - Chapitre 6");
    print("7 - Chapitre 7");
    print("8 - Chapitre 8");
    print("9 - Chapitre 9");
    print("10 - Revenir au menu Principal \n\n");
  }
  
}
