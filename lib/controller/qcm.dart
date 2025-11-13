import '../view/view.dart';
import '../model/answer.dart';
import '../model/question.dart';

class QCMController {

  final TerminalView view = TerminalView();

  QCMController();

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
    while (true) {

      view.printChapterMenu();
      String? stringChoice = view.prompt(
          'Choisir une action avec les nombres :');

      if (stringChoice != null && int.tryParse(stringChoice) != null) {
        int intChoice = int.parse(stringChoice);
        
        if (intChoice <= 9 && intChoice >=1) {
          runQuestion(intChoice);
        }
        else if (intChoice == 10) {
          return;
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

  void runQuestion(int chapter){
    view.printMessage("Bienvenue dans le chapitre $chapter");

    Question myQuestion = Question();
    myQuestion.text = "Va Bene ?";

    Answer answer1 = Answer();
    answer1.text = "Si";
    answer1.correct = true;

    Answer answer2 = Answer();
    answer2.text = "Nah";
    answer2.correct = false;

    myQuestion.answers = [answer1, answer2];
    bool userAnswer = askQuestion(myQuestion);

    if (userAnswer) {
      view.prompt("50 points pour Gryffondor !");
    }
    else {
      view.prompt("Loupé...");
    }
  }

  bool askQuestion(Question question){
    while (true) {

      String? stringAnswer = view.promptQuestion(question);

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
