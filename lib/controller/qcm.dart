import 'dart:math';
import '../view/view.dart';


class QCMController {

  final TerminalView view = TerminalView();
  final aleatoirisation = Random();

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
            manageThemes();
            break;
          case 2:
            manageGame();
            break;
          case 3:
            runGame();
            break;
          case 4:
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

  void manageThemes(){
    while (true) {
      
      view.printManageThemesMenu();
      String? stringChoice = view.prompt(
          'Choisir une action avec les nombres :');

      if (stringChoice != null && int.tryParse(stringChoice) != null) {
        int intChoice = int.parse(stringChoice);
        
        switch (intChoice) {
          case 1:
            addTheme();
            break;
          case 2:
            addQuestionToTheme();
            break;
          case 3:
            deleteQuestionFromTheme();
            break;
          case 4:
            deleteTheme();
            break;
          case 5:
            showThemes();
            break;
          case 6:
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

  void addTheme(){
    while (true) {
      
      while (true) {

        String? nomTheme = view.prompt(
          'Donnez un nom au Theme :');

        if (nomTheme != null) {
          break;
        }
        
      }
      

    }
  }

  
}
