
import '../view/view.dart';
import '../model/question.dart';
import '../model/chapter.dart';
import '../model/database_qcm_helper.dart';
import 'dart:math';

class QCMController {

  final TerminalView view = TerminalView();
  late final DatabaseQcmHelper database;
  int score = 0 ;

  QCMController(){
    database = DatabaseQcmHelper();
  }

  void run() {
    while (true) {

      view.printMainMenu();
      String? stringChoice = view.prompt(
          'Choisir une action avec les nombres :');

      if (stringChoice != null && int.tryParse(stringChoice) != null) {
        int intChoice = int.parse(stringChoice);
        
        switch (intChoice) {
          case 1:
            chooseChapter();
            break;
          case 2:
            return;
          default:
            view.printMessage('Commande non reconnue.');
            break;
        }
      }
      else {
        view.printMessage('Commande non reconnue.');
      }
      
    }
  }

  void chooseChapter() {
    List<Chapter> listeChapitres = database.getChapters();
    while (true) {

      view.printChapterMenu(listeChapitres);
      String? stringChoice = view.prompt(
          'Choisir une action avec les nombres :');

      if (stringChoice != null && int.tryParse(stringChoice) != null) {
        int intChoice = int.parse(stringChoice);
        
        if (intChoice == (listeChapitres.length+1)) {
          return;
        }
        else if (intChoice <= listeChapitres.length && intChoice >=1) {
          runChapter(listeChapitres[intChoice-1]);
        }
        else {
          view.printMessage('Commande non reconnue.');
        }
      }
      else {
        view.printMessage('Commande non reconnue.');
      }
      
    }
  }

  void runChapter(Chapter chapter){
    score = 0;

    List<Question> listeDeQuestions = database.getQuestions(chapter);
    listeDeQuestions.shuffle(Random());

    for (Question question in listeDeQuestions) {
      question.setAnswers(database.getAnswers(question));
      bool userAnswer = askQuestion(question, chapter.title);
      if (userAnswer) {
        score += 1;
      }
    }

    view.printGameOver(score,  listeDeQuestions.length);

  }

  bool askQuestion(Question question, String chapterTitle){
    while (true) {

      view.promptQuestion(question, chapterTitle);
      String? stringAnswer = view.prompt(
        'Choisir une action avec les nombres :');

      // La réponse du user est elle un int ?
      if (stringAnswer != null && int.tryParse(stringAnswer) != null) {
        int intAnswer = int.parse(stringAnswer);

        // La réponse du user est elle un int correspondant a une réponse de la question ?
        if (intAnswer >= 1 && intAnswer <= question.answers.length) {
          
          // La réponse du user est valide. On peut récupérer la réponse du user et voir si elle est bonne
          return question.answers[intAnswer - 1].correct;
        }
      }
    }
  }

  
}
