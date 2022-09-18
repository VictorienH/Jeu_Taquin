import 'ihm.dart';
import 'main.dart';
import 'fonction.dart';
import 'dart:io';

class Taquin {
  static jeu(monTab) {
    String vide = " ";

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

          if (monTab[0] == " ") {
            if (y == 2 || y == 3) {
              valide = true;
            }
          } else if (monTab[2] == " ") {
            if (y == 3 || y == 4) {
              valide = true;
            }
          } else if (monTab[6] == " ") {
            if (y == 1 || y == 2) {
              valide = true;
            }
          } else if (monTab[8] == " ") {
            if (y == 1 || y == 4) {
              valide = true;
            }
          } else {
            valide = false;
          }
          return y;
        }
        if (y == 2) {
          monTab[0] = monTab[1];
          monTab[1] = vide;
        } else {
          monTab[0] = monTab[3];
          monTab[3] = vide;
        }
        IHM.afficheTableau(monTab);
      }
      if (monTab[1] == vide) {
        IHM.droite();
        IHM.bas();
        IHM.gauche();

        bool valide = false;
        int k = 0;
        while (!valide) {
          try {
            k = int.parse(stdin.readLineSync().toString());
          } catch (e) {
            print("Erreur dans la saisie");
          }
          if (monTab[1] == " ") {
            if (k == 2 || k == 3 || k == 4) {
              valide = true;
            }
          } else if (monTab[3] == " ") {
            if (k == 1 || k == 2 || k == 3) {
              valide = true;
            }
          } else if (monTab[5] == " ") {
            if (k == 1 || k == 3 || k == 4) {
              valide = true;
            }
          } else if (monTab[7] == " ") {
            if (k == 1 || k == 2 || k == 4) {
              valide = true;
            }
          } else {
            valide = false;
          }
          return k;
        }
        if (k == 2) {
          monTab[1] = monTab[2];
          monTab[2] = vide;
        } else if (k == 3) {
          monTab[1] = monTab[4];
          monTab[4] = vide;
        } else {
          monTab[1] = monTab[0];
          monTab[0] = vide;
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

          if (monTab[0] == " ") {
            if (y == 2 || y == 3) {
              valide = true;
            }
          } else if (monTab[2] == " ") {
            if (y == 3 || y == 4) {
              valide = true;
            }
          } else if (monTab[6] == " ") {
            if (y == 1 || y == 2) {
              valide = true;
            }
          } else if (monTab[8] == " ") {
            if (y == 1 || y == 4) {
              valide = true;
            }
          } else {
            valide = false;
          }
          return y;
        }
        if (y == 3) {
          monTab[2] = monTab[5];
          monTab[5] = vide;
        } else {
          monTab[2] = monTab[1];
          monTab[1] = vide;
        }
        IHM.afficheTableau(monTab);
      }
      if (monTab[3] == vide) {
        IHM.haut();
        IHM.droite();
        IHM.bas();

        bool valide = false;
        int k = 0;
        while (!valide) {
          try {
            k = int.parse(stdin.readLineSync().toString());
          } catch (e) {
            print("Erreur dans la saisie");
          }
          if (monTab[1] == " ") {
            if (k == 2 || k == 3 || k == 4) {
              valide = true;
            }
          } else if (monTab[3] == " ") {
            if (k == 1 || k == 2 || k == 3) {
              valide = true;
            }
          } else if (monTab[5] == " ") {
            if (k == 1 || k == 3 || k == 4) {
              valide = true;
            }
          } else if (monTab[7] == " ") {
            if (k == 1 || k == 2 || k == 4) {
              valide = true;
            }
          } else {
            valide = false;
          }
          return k;
        }
        if (k == 1) {
          monTab[3] = monTab[0];
          monTab[0] = vide;
        } else if (k == 2) {
          monTab[3] = monTab[4];
          monTab[4] = vide;
        } else {
          monTab[3] = monTab[6];
          monTab[6] = vide;
        }
        IHM.afficheTableau(monTab);
      }
      if (monTab[4] == vide) {
        IHM.haut();
        IHM.droite();
        IHM.bas();
        IHM.gauche();

        bool valide = false;
        int z = 0;
        while (!valide) {
          try {
            z = int.parse(stdin.readLineSync().toString());
          } catch (e) {
            print("Erreur dans la saisie");
          }
          if (z == 1 || z == 2 || z == 3 || z == 4) {
            valide = true;
          } else {
            valide = false;
          }
          return z;
        }

        if (z == 1) {
          monTab[4] = monTab[1];
          monTab[1] = vide;
        } else if (z == 2) {
          monTab[4] = monTab[5];
          monTab[5] = vide;
        } else if (z == 3) {
          monTab[4] = monTab[7];
          monTab[7] = vide;
        } else {
          monTab[4] = monTab[3];
          monTab[3] = vide;
        }
        IHM.afficheTableau(monTab);
      }
    }
    if (monTab[5] == vide) {
      IHM.haut();
      IHM.bas();
      IHM.gauche();

      bool valide = false;
      int k = 0;
      while (!valide) {
        try {
          k = int.parse(stdin.readLineSync().toString());
        } catch (e) {
          print("Erreur dans la saisie");
        }
        if (monTab[1] == " ") {
          if (k == 2 || k == 3 || k == 4) {
            valide = true;
          }
        } else if (monTab[3] == " ") {
          if (k == 1 || k == 2 || k == 3) {
            valide = true;
          }
        } else if (monTab[5] == " ") {
          if (k == 1 || k == 3 || k == 4) {
            valide = true;
          }
        } else if (monTab[7] == " ") {
          if (k == 1 || k == 2 || k == 4) {
            valide = true;
          }
        } else {
          valide = false;
        }
        return k;
      }
      if (k == 1) {
        monTab[5] = monTab[2];
        monTab[2] = vide;
      } else if (k == 3) {
        monTab[5] = monTab[8];
        monTab[8] = vide;
      } else {
        monTab[5] = monTab[4];
        monTab[4] = vide;
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

        if (monTab[0] == " ") {
          if (y == 2 || y == 3) {
            valide = true;
          }
        } else if (monTab[2] == " ") {
          if (y == 3 || y == 4) {
            valide = true;
          }
        } else if (monTab[6] == " ") {
          if (y == 1 || y == 2) {
            valide = true;
          }
        } else if (monTab[8] == " ") {
          if (y == 1 || y == 4) {
            valide = true;
          }
        } else {
          valide = false;
        }
        return y;
      }
      if (y == 1) {
        monTab[6] = monTab[3];
        monTab[3] = vide;
      } else {
        monTab[6] = monTab[7];
        monTab[7] = vide;
      }
      IHM.afficheTableau(monTab);
    }
    if (monTab[7] == vide) {
      IHM.haut();
      IHM.droite();
      IHM.gauche();

      bool valide = false;
      int k = 0;
      while (!valide) {
        try {
          k = int.parse(stdin.readLineSync().toString());
        } catch (e) {
          print("Erreur dans la saisie");
        }
        if (monTab[1] == " ") {
          if (k == 2 || k == 3 || k == 4) {
            valide = true;
          }
        } else if (monTab[3] == " ") {
          if (k == 1 || k == 2 || k == 3) {
            valide = true;
          }
        } else if (monTab[5] == " ") {
          if (k == 1 || k == 3 || k == 4) {
            valide = true;
          }
        } else if (monTab[7] == " ") {
          if (k == 1 || k == 2 || k == 4) {
            valide = true;
          }
        } else {
          valide = false;
        }
        return k;
      }
      if (k == 1) {
        monTab[7] = monTab[4];
        monTab[4] = vide;
      } else if (k == 2) {
        monTab[7] = monTab[8];
        monTab[8] = vide;
      } else {
        monTab[7] = monTab[6];
        monTab[6] = vide;
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

        if (monTab[0] == " ") {
          if (y == 2 || y == 3) {
            valide = true;
          }
        } else if (monTab[2] == " ") {
          if (y == 3 || y == 4) {
            valide = true;
          }
        } else if (monTab[6] == " ") {
          if (y == 1 || y == 2) {
            valide = true;
          }
        } else if (monTab[8] == " ") {
          if (y == 1 || y == 4) {
            valide = true;
          }
        } else {
          valide = false;
        }
        return y;
      }
      if (y == 1) {
        monTab[8] = monTab[5];
        monTab[5] = vide;
      } else {
        monTab[8] = monTab[7];
        monTab[7] = vide;
      }
      IHM.afficheTableau(monTab);
    }
  }
}
