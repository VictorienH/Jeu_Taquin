import 'ihm.dart';
import 'main.dart';
import 'dart:io';

class TaquinNew {
  static jeuTaquin() {
    List<String> monTab = ["1", "2", "3", "4", "5", "6", "7", "8", " "];
    String vide = " ";
    monTab.shuffle();
    IHM.afficheTableau(monTab);
    bool fin = false;

    while (fin != true) {
      while (monTab != ["1", "2", "3", "4", "5", "6", "7", "8", " "]) {
        if (monTab[0] == vide) {
          IHM.droite();
          IHM.bas();
          bool valide = false;
          int y = 0;
          while (!valide) {
            try {
              y = int.parse(stdin.readLineSync().toString());
            } catch (e) {
              print("Erreur dans la saisie");
            }

            if (y == 6) {
              monTab[0] = monTab[1];
              monTab[1] = vide;
              valide = true;
            } else if (y == 2) {
              monTab[0] = monTab[3];
              monTab[3] = vide;
              valide = true;
            } else {
              valide = false;
            }
          }
          IHM.afficheTableau(monTab);
        }

        if (monTab[1] == vide) {
          IHM.droite();
          IHM.bas();
          IHM.gauche();
          bool valide = false;
          int y = 0;
          while (!valide) {
            try {
              y = int.parse(stdin.readLineSync().toString());
            } catch (e) {
              print("Erreur dans la saisie");
            }

            if (y == 6) {
              monTab[1] = monTab[2];
              monTab[2] = vide;
              valide = true;
            } else if (y == 2) {
              monTab[1] = monTab[4];
              monTab[4] = vide;
              valide = true;
            } else if (y == 4) {
              monTab[1] = monTab[0];
              monTab[0] = vide;
              valide = true;
            } else {
              valide = false;
            }
          }
          IHM.afficheTableau(monTab);
        }

        if (monTab[2] == vide) {
          IHM.bas();
          IHM.gauche();
          bool valide = false;
          int y = 0;
          while (!valide) {
            try {
              y = int.parse(stdin.readLineSync().toString());
            } catch (e) {
              print("Erreur dans la saisie");
            }

            if (y == 2) {
              monTab[2] = monTab[5];
              monTab[5] = vide;
              valide = true;
            } else if (y == 4) {
              monTab[2] = monTab[1];
              monTab[1] = vide;
              valide = true;
            } else {
              valide = false;
            }
          }
          IHM.afficheTableau(monTab);
        }

        if (monTab[3] == vide) {
          IHM.haut();
          IHM.droite();
          IHM.bas();
          bool valide = false;
          int y = 0;
          while (!valide) {
            try {
              y = int.parse(stdin.readLineSync().toString());
            } catch (e) {
              print("Erreur dans la saisie");
            }
            if (y == 8) {
              monTab[3] = monTab[0];
              monTab[0] = vide;
              valide = true;
            } else if (y == 6) {
              monTab[3] = monTab[4];
              monTab[4] = vide;
              valide = true;
            } else if (y == 2) {
              monTab[3] = monTab[6];
              monTab[6] = vide;
              valide = true;
            } else {
              valide = false;
            }
          }
          IHM.afficheTableau(monTab);
        }
        if (monTab[4] == vide) {
          IHM.haut();
          IHM.droite();
          IHM.bas();
          IHM.gauche();

          bool valide = false;
          int y = 0;
          while (!valide) {
            try {
              y = int.parse(stdin.readLineSync().toString());
            } catch (e) {
              print("Erreur dans la saisie");
            }

            if (y == 8) {
              monTab[4] = monTab[1];
              monTab[1] = vide;
              valide = true;
            } else if (y == 6) {
              monTab[4] = monTab[5];
              monTab[5] = vide;
              valide = true;
            } else if (y == 2) {
              monTab[4] = monTab[7];
              monTab[7] = vide;
              valide = true;
            } else if (y == 4) {
              monTab[4] = monTab[3];
              monTab[3] = vide;
              valide = true;
            } else {
              valide = false;
            }
          }

          IHM.afficheTableau(monTab);
        }
        if (monTab[5] == vide) {
          IHM.haut();
          IHM.bas();
          IHM.gauche();
          bool valide = false;
          int y = 0;
          while (!valide) {
            try {
              y = int.parse(stdin.readLineSync().toString());
            } catch (e) {
              print("Erreur dans la saisie");
            }
            if (y == 8) {
              monTab[5] = monTab[2];
              monTab[2] = vide;
              valide = true;
            } else if (y == 2) {
              monTab[5] = monTab[8];
              monTab[8] = vide;
              valide = true;
            } else if (y == 4) {
              monTab[5] = monTab[4];
              monTab[4] = vide;
              valide = true;
            } else {
              valide = false;
            }
          }
          IHM.afficheTableau(monTab);
        }

        if (monTab[6] == vide) {
          IHM.haut();
          IHM.droite();
          bool valide = false;
          int y = 0;
          while (!valide) {
            try {
              y = int.parse(stdin.readLineSync().toString());
            } catch (e) {
              print("Erreur dans la saisie");
            }
            if (y == 8) {
              monTab[6] = monTab[3];
              monTab[3] = vide;
              valide = true;
            } else if (y == 6) {
              monTab[6] = monTab[7];
              monTab[7] = vide;
              valide = true;
            } else {
              valide = false;
            }
          }
          IHM.afficheTableau(monTab);
        }

        if (monTab[7] == vide) {
          IHM.haut();
          IHM.droite();
          IHM.gauche();
          bool valide = false;
          int y = 0;
          while (!valide) {
            try {
              y = int.parse(stdin.readLineSync().toString());
            } catch (e) {
              print("Erreur dans la saisie");
            }
            if (y == 8) {
              monTab[7] = monTab[4];
              monTab[4] = vide;
              valide = true;
            } else if (y == 6) {
              monTab[7] = monTab[8];
              monTab[8] = vide;
              valide = true;
            } else if (y == 4) {
              monTab[7] = monTab[6];
              monTab[6] = vide;
              valide = true;
            } else {
              valide = false;
            }
          }
          IHM.afficheTableau(monTab);
        }

        if (monTab[8] == vide) {
          IHM.haut();
          IHM.gauche();
          bool valide = false;
          int y = 0;
          while (!valide) {
            try {
              y = int.parse(stdin.readLineSync().toString());
            } catch (e) {
              print("Erreur dans la saisie");
            }

            if (y == 8) {
              monTab[8] = monTab[5];
              monTab[5] = vide;
              valide = true;
            } else if (y == 4) {
              monTab[8] = monTab[7];
              monTab[7] = vide;
              valide = true;
            } else {
              valide = false;
            }
          }
          IHM.afficheTableau(monTab);
        }

        monTab = ["1", "2", "3", "4", "5", "6", "7", "8", " "];
      }
    }
    if (monTab == ["1", "2", "3", "4", "5", "6", "7", "8", " "]) {
      fin = true;
    } else {
      fin = false;
    }
  }
}
