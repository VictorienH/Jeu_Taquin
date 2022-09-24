import 'taquin.dart';
import 'main.dart';
import 'dart:io';

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

  static void affichePlateau(plateau) {
    print("+----+----+----+");
    print("| " +
        plateau[0].toString() +
        "  |" +
        " " +
        plateau[1].toString() +
        "  |" +
        " " +
        plateau[2].toString() +
        "  |");
    print("+----+----+----+");
    print("| " +
        plateau[3].toString() +
        "  |" +
        " " +
        plateau[4].toString() +
        "  |" +
        " " +
        plateau[5].toString() +
        "  |");
    print("+----+----+----+");
    print("| " +
        plateau[6].toString() +
        "  |" +
        " " +
        plateau[7].toString() +
        "  |" +
        " " +
        plateau[8].toString() +
        "  |");
    print("+----+----+----+");
    ;
  }
}
