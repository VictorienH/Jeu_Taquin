import 'package:test/test.dart';

import 'ihm.dart';
import 'main.dart';
import 'fonction.dart';

class Taquin {
  static void caseVide(monTab) {
    var i = 0;

    while (i < monTab.length) {
      if (monTab[i] == "0") {
        monTab[i] = " ";
        i = monTab.length;
      } else {
        i++;
      }
    }
  }

  static jeu(monTab) {
    String vide = " ";
    var i = 0;
    while (monTab != ["1", "2", "3", "4", "5", "6", "7", "8", " "]) {
      if (monTab[0] == vide) {
        IHM.droite();
        IHM.bas();
        Saisir.choix2(monTab);
        if (i == 2) {
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

        Saisir.choix3(monTab);
        if (i == 2) {
          monTab[1] = monTab[2];
          monTab[2] = vide;
        } else if (i == 3) {
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

        Saisir.choix2(monTab);
        if (i == 3) {
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

        Saisir.choix3(monTab);
        if (i == 1) {
          monTab[3] = monTab[0];
          monTab[0] = vide;
        } else if (i == 2) {
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

        Saisir.choix4(monTab);
        if (i == 1) {
          monTab[4] = monTab[1];
          monTab[1] = vide;
        } else if (i == 2) {
          monTab[4] = monTab[5];
          monTab[5] = vide;
        } else if (i == 3) {
          monTab[4] = monTab[7];
          monTab[7] = vide;
        } else {
          monTab[4] = monTab[3];
          monTab[3] = vide;
        }
        IHM.afficheTableau(monTab);
      }
      if (monTab[5] == vide) {
        IHM.haut();
        IHM.bas();
        IHM.gauche();

        Saisir.choix3(monTab);
        if (i == 1) {
          monTab[5] = monTab[2];
          monTab[2] = vide;
        } else if (i == 3) {
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

        Saisir.choix2(monTab);
        if (i == 1) {
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

        Saisir.choix3(monTab);
        if (i == 1) {
          monTab[7] = monTab[4];
          monTab[4] = vide;
        } else if (i == 2) {
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

        Saisir.choix2(monTab);
        if (i == 1) {
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
}
