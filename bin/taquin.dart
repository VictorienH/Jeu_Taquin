import 'ihm.dart';
import 'main.dart';
import 'fonction.dart';
import 'dart:io';

class Taquin {
  //ATTRIBUTS
  List<String> plateau = ["1", "2", "3", "4", "5", "6", "7", "8", " "];
  String vide = " ";
  bool fin = false;

  // CONSTRUCTEUR
  Taquin(this.plateau, this.vide, this.fin);

  // GETTER ET SETTER
  List<String> getAffichePlateau() {
    return plateau;
  }

  String getCaseVide() {
    return vide;
  }

  bool getFin() {
    return fin;
  }

  void setCaseVide(String rien) {
    vide = rien;
  }

  // METHODES

  lancePartie() {
    bool partie = true;

    while (partie != false) {
      for (var i = 0; partie != false; i++) {
        if (plateau[0] == vide) {
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
              plateau[0] = plateau[1];
              plateau[1] = vide;
              valide = true;
            } else if (y == 2) {
              plateau[0] = plateau[3];
              plateau[3] = vide;
              valide = true;
            } else {
              valide = false;
            }
          }

          IHM.affichePlateau(plateau);
          estGagnant();
          if (estGagnant() == true) {
            partie = false;
          } else {
            partie = true;
          }
        } else if (plateau[1] == vide) {
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
              plateau[1] = plateau[2];
              plateau[2] = vide;
              valide = true;
            } else if (y == 2) {
              plateau[1] = plateau[4];
              plateau[4] = vide;
              valide = true;
            } else if (y == 4) {
              plateau[1] = plateau[0];
              plateau[0] = vide;
              valide = true;
            } else {
              valide = false;
            }
          }

          IHM.affichePlateau(plateau);
          estGagnant();
          if (estGagnant() == true) {
            partie = false;
          } else {
            partie = true;
          }
        } else if (plateau[2] == vide) {
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
              plateau[2] = plateau[5];
              plateau[5] = vide;
              valide = true;
            } else if (y == 4) {
              plateau[2] = plateau[1];
              plateau[1] = vide;
              valide = true;
            } else {
              valide = false;
            }
          }

          IHM.affichePlateau(plateau);
          estGagnant();
          if (estGagnant() == true) {
            partie = false;
          } else {
            partie = true;
          }
        } else if (plateau[3] == vide) {
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
              plateau[3] = plateau[0];
              plateau[0] = vide;
              valide = true;
            } else if (y == 6) {
              plateau[3] = plateau[4];
              plateau[4] = vide;
              valide = true;
            } else if (y == 2) {
              plateau[3] = plateau[6];
              plateau[6] = vide;
              valide = true;
            } else {
              valide = false;
            }
          }

          IHM.affichePlateau(plateau);
          estGagnant();
          if (estGagnant() == true) {
            partie = false;
          } else {
            partie = true;
          }
        } else if (plateau[4] == vide) {
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
              plateau[4] = plateau[1];
              plateau[1] = vide;
              valide = true;
            } else if (y == 6) {
              plateau[4] = plateau[5];
              plateau[5] = vide;
              valide = true;
            } else if (y == 2) {
              plateau[4] = plateau[7];
              plateau[7] = vide;
              valide = true;
            } else if (y == 4) {
              plateau[4] = plateau[3];
              plateau[3] = vide;
              valide = true;
            } else {
              valide = false;
            }
          }

          IHM.affichePlateau(plateau);
          estGagnant();
          if (estGagnant() == true) {
            partie = false;
          } else {
            partie = true;
          }
        } else if (plateau[5] == vide) {
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
              plateau[5] = plateau[2];
              plateau[2] = vide;
              valide = true;
            } else if (y == 2) {
              plateau[5] = plateau[8];
              plateau[8] = vide;
              valide = true;
            } else if (y == 4) {
              plateau[5] = plateau[4];
              plateau[4] = vide;
              valide = true;
            } else {
              valide = false;
            }
          }

          IHM.affichePlateau(plateau);
          estGagnant();
          if (estGagnant() == true) {
            partie = false;
          } else {
            partie = true;
          }
        } else if (plateau[6] == vide) {
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
              plateau[6] = plateau[3];
              plateau[3] = vide;
              valide = true;
            } else if (y == 6) {
              plateau[6] = plateau[7];
              plateau[7] = vide;
              valide = true;
            } else {
              valide = false;
            }
          }
          IHM.affichePlateau(plateau);
          estGagnant();
          if (estGagnant() == true) {
            partie = false;
          } else {
            partie = true;
          }
        } else if (plateau[7] == vide) {
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
              plateau[7] = plateau[4];
              plateau[4] = vide;
              valide = true;
            } else if (y == 6) {
              plateau[7] = plateau[8];
              plateau[8] = vide;
              valide = true;
            } else if (y == 4) {
              plateau[7] = plateau[6];
              plateau[6] = vide;
              valide = true;
            } else {
              valide = false;
            }
          }

          IHM.affichePlateau(plateau);
          estGagnant();
          if (estGagnant() == true) {
            partie = false;
          } else {
            partie = true;
          }
        } else if (plateau[8] == vide) {
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
              plateau[8] = plateau[5];
              plateau[5] = vide;
              valide = true;
            } else if (y == 4) {
              plateau[8] = plateau[7];
              plateau[7] = vide;
              valide = true;
            } else {
              valide = false;
            }
          }

          IHM.affichePlateau(plateau);
          estGagnant();
          if (estGagnant() == true) {
            partie = false;
          } else {
            partie = true;
          }
        }
      }
    }
  }

  estGagnant() {
    List<String> ref = ["1", "2", "3", "4", "5", "6", "7", "8", " "];
    bool gagant = true;
    for (var k = 0; k < plateau.length - 1; k++) {
      if (plateau[k] == ref[k] && plateau[plateau.length - 1] == " ") {
        gagant = true;
      } else {
        gagant = false;
      }
    }
    return gagant;
  }
}
