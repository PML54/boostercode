// Nouveau Jeu

import 'dart:math';
class ConfigTarot {// Caracteristiques Partie
 int nbJoueur=3;
 ConfigTarot (
     this.nbJoueur
     );
}

class ConfigDisplay {
  double widthMineur =  60;
  double heightMineur =  80;
  double widthMajeur = 85;
  double heightMajeur =  140;
  ConfigDisplay (
      this.widthMineur,
      this.heightMineur,
      this.widthMajeur,
      this.heightMajeur,
      );
}
class RunningTarot {  // Caracteristiques Partie  en cours

int turnJoueur=1;
int whichPli=0;
RunningTarot(
    this.turnJoueur,
    this.whichPli

    );
}