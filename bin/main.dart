import 'taquin.dart';
import 'ihm.dart';

void main(List<String> arguments) {
  List<String> monTab = ["1", "2", "3", "4", "5", "6", "7", "8", " "];
  monTab.shuffle();
  IHM.afficheTableau(monTab);
  Taquin.jeu(monTab);

  IHM.gagne();
}
