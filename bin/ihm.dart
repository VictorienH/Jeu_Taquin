import 'taquin.dart';
import 'main.dart';

class IHM {
  static void haut() {
    print("8 pour aller en haut");
  }

  static droite() {
    print("6 pour aller à droite");
  }

  static void bas() {
    print("2 pour aller en bas");
  }

  static void gauche() {
    print("4 pour aller à gauche");
  }

  static void gagne() {
    print("Vous avez gagné!");
  }

  static void afficheTableau(monTab) {
    print("+----+----+----+");
    print("| " +
        monTab[0].toString() +
        "  |" +
        " " +
        monTab[1].toString() +
        "  |" +
        " " +
        monTab[2].toString() +
        "  |");
    print("+----+----+----+");
    print("| " +
        monTab[3].toString() +
        "  |" +
        " " +
        monTab[4].toString() +
        "  |" +
        " " +
        monTab[5].toString() +
        "  |");
    print("+----+----+----+");
    print("| " +
        monTab[6].toString() +
        "  |" +
        " " +
        monTab[7].toString() +
        "  |" +
        " " +
        monTab[8].toString() +
        "  |");
    print("+----+----+----+");
    ;
  }
}
