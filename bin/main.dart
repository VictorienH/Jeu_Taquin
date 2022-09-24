import 'taquin.dart';
import 'ihm.dart';

void main(List<String> arguments) {
  Taquin jeu =
      Taquin(["1", "2", "3", "4", "5", "6", "7", "8", " "], " ", false);

  //jeu.getAffichePlateau().shuffle();
  IHM.affichePlateau(jeu.getAffichePlateau());
  jeu.lancePartie();
  IHM.gagne();
}
