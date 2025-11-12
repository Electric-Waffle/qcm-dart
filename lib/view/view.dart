import 'dart:io';

class TerminalView {

  String? prompt(String message) {
    print(
        "--------------------------------------------------------------------");
    printMessage(message);
    return stdin.readLineSync();
  }

  void printMessage(String message) {
    print(message);
  }

  void printMainMenu() {
    print("...  .-  ---  -=  ===  =[ Q C M ]=  ===  =-  ---  -.  ... \n\n");
    print("1 - Gestion des thêmes ");
    print("2 - Gestion de la Partie ");
    print("3 - Lancer la Partie ");
    print("4 - Quitter \n\n");
  }

  void printManageThemesMenu() {
    print("...  .-  ---  -=  ===  =[ GESTION DES THÊMES ]=  ===  =-  ---  -.  ... \n\n");
    print("1 - Créer un thême \n");
    print("2 - Ajouter une question à un thême");
    print("3 - Afficher les thêmes \n");
    print("4 - Supprimer une question d'un thême");
    print("5 - Supprimer un thême \n");
    print("6 - Revenir au menu Principal \n\n");
  }
  
}
