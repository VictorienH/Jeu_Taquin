import 'dart:io';
import 'main.dart';

class Saisir {
  static choix2(monTab) {
    bool valide = false;
    int i = 0;
    while (!valide) {
      try {
        i = int.parse(stdin.readLineSync().toString());
      } catch (e) {
        print("Erreur dans la saisie");
        i = choix2(monTab);
      }

      if (monTab[0] == " ") {
        if (i == 2 || i == 3) {
          valide = true;
        }
      } else if (monTab[2] == " ") {
        if (i == 3 || i == 4) {
          valide = true;
        }
      } else if (monTab[6] == " ") {
        if (i == 1 || i == 2) {
          valide = true;
        }
      } else if (monTab[8] == " ") {
        if (i == 1 || i == 4) {
          valide = true;
        }
      } else {
        valide = false;
      }

      return i;
    }
  }

  static choix3(monTab) {
    bool valide = false;
    int i = 0;
    while (!valide) {
      try {
        i = int.parse(stdin.readLineSync().toString());
      } catch (e) {
        print("Erreur dans la saisie");
        i = choix3(monTab);
      }
      if (monTab[1] == " ") {
        if (i == 2 || i == 3 || i == 4) {
          valide = true;
        }
      } else if (monTab[3] == " ") {
        if (i == 1 || i == 2 || i == 3) {
          valide = true;
        }
      } else if (monTab[5] == " ") {
        if (i == 1 || i == 3 || i == 4) {
          valide = true;
        }
      } else if (monTab[7] == " ") {
        if (i == 1 || i == 2 || i == 4) {
          valide = true;
        }
      } else {
        valide = false;
      }
      return i;
    }
  }

  static choix4(monTab) {
    bool valide = false;
    int i = 0;
    while (!valide) {
      try {
        i = int.parse(stdin.readLineSync().toString());
      } catch (e) {
        print("Erreur dans la saisie");
        i = choix4(monTab);
      }
      if (i == 1 || i == 2 || i == 3 || i == 4) {
        valide = true;
      } else {
        valide = false;
      }
    }

    return i;
  }

  static positionCaseVide(monTab) {
    var i = 0;
    while (i < monTab.length) {
      if (monTab[i] == " ") {
        i = monTab.length;
      } else {
        i++;
      }
    }
    return i;
  }
}
