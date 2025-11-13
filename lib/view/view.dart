import 'dart:io';
import '../model/question.dart';
import '../model/chapter.dart';
import '../model/answer.dart';

class TerminalView {

  String? prompt(String message) {
    print(
        "--------------------------------------------------------------------");
    printMessage(message);
    return stdin.readLineSync();
  }

  String? promptQuestion(Question question) {

    // Affichage
    print(question.label);
    for (int i = 0 ; i < question.answers.length ; i++) {
      print("${i+1} - ${question.answers[i].label}");
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

  void printChapterMenu(List<Chapter> listeChapitres) {
    print("...  .-  ---  -=  ===  =[ CHOIX DU CHAPITRE ]=  ===  =-  ---  -.  ... \n\n");
    int i = 0;
    for (i ; i < listeChapitres.length; i++) {
      print("${i+1} - ${listeChapitres[i].title}");
    }
    print("\n${i+1} - Revenir au menu Principal \n\n");
  }
  
}
