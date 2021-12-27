import 'dart:math';
class TaroGame {
  late int nbMain;
  late int nbJoueur;
  late int turnJoueur;
//stocker lrd cartes
//LesPlis
//Les Mains
//Stocker les chiens

  late int whichPli;



}
// Cette Classe distribue aleatoirement  des cartes d'un jeu de 78 cartes
// En fait il genere un nombre de 1/78 sans remise
// revoie 0 lorsque le Jeu est distribué

class TaroDist {
  final yesDistrib  = 0;
  final notDistrib = 1;
  int nbCarte;
  int powerCarte=0;
  int nbFree=0;
  int thatCarte = 0;
  var gameCarte = List.filled(80, 1);
//List<int> gameCarte = [0, for (var i = 0; i < 80 ; i++) 1];
  List<int> tempGameCarte = <int>[];

  TaroDist (
      this.nbCarte

      );
  int razRandomCard() {
    this.tempGameCarte.clear();
    for (var i = 0; i < 80 ; i++) gameCarte[i]=1;
    nbFree=0;
    return (0);
  }
  int  getRandomCard() {
    int randomCarte=0;

    // On remet à Jour les  temporaires
    this.tempGameCarte.clear();
    tempGameCarte.add(0); // 1st element is unused
    nbFree=0;
    for (int i = 1; i < 79 ; i++) {

      if (gameCarte[i] == 1 ) {
        tempGameCarte.add(i);
        nbFree++;
      }

    }
    if (nbFree == 0 ) return (0);

    randomCarte = Random().nextInt(tempGameCarte.length -1 ) + 1;
    randomCarte = tempGameCarte[randomCarte];   // En 2 temps

    // Maj
    gameCarte[randomCarte] = 0;
    return (randomCarte);
  }
}




class TaroCard {
  int numCarte;
  int powerCarte;
  int couleurCarte;
  double valeurCarte;
  int isTete;
  int isBout;
  int ecartPossible;
  String imageCarte;
  TaroCard(
      this.numCarte,
      this.powerCarte,
      this.couleurCarte,
      this.valeurCarte,
      this.isTete,
      this.isBout,
      this.ecartPossible,
      this.imageCarte
      );
}
//******


// Description des Cartes

final tarotCartes = [
  new TaroCard (0,22,0, 5,0,1,1, "TAROT00.jpeg"),
  new TaroCard (1,22,0, 5,0,1,1, "TAROT01.jpeg"),
  new TaroCard (2,21,0, 5,0,1,1, "TAROT02.jpeg"),
  new TaroCard (3,20,0, 1,0,0,1, "TAROT03.jpeg"),
  new TaroCard (4,19,0, 1,0,0,1, "TAROT04.jpeg"),
  new TaroCard (5,18,0, 1,0,0,1, "TAROT05.jpeg"),
  new TaroCard (6,17,0, 1,0,0,1, "TAROT06.jpeg"),
  new TaroCard (7,16,0, 1,0,0,1, "TAROT07.jpeg"),
  new TaroCard (8,15,0, 1,0,0,1, "TAROT08.jpeg"),
  new TaroCard (9,14,0, 1,0,0,1, "TAROT09.jpeg"),
  new TaroCard (10,13,0, 1,0,0,1, "TAROT010.jpeg"),
  new TaroCard (11,12,0, 1,0,0,1, "TAROT011.jpeg"),
  new TaroCard (12,11,0, 1,0,0,1, "TAROT012.jpeg"),
  new TaroCard (13,10,0, 1,0,0,1, "TAROT013.jpeg"),
  new TaroCard (14,9,0, 1,0,0,1, "TAROT014.jpeg"),
  new TaroCard (15,8,0, 1,0,0,1, "TAROT015.jpeg"),
  new TaroCard (16,7,0, 1,0,0,1, "TAROT016.jpeg"),
  new TaroCard (17,6,0, 1,0,0,1, "TAROT017.jpeg"),
  new TaroCard (18,5,0, 1,0,0,1, "TAROT018.jpeg"),
  new TaroCard (19,4,0, 1,0,0,1, "TAROT019.jpeg"),
  new TaroCard (20,3,0, 1,0,0,1, "TAROT020.jpeg"),
  new TaroCard (21,2,0, 1,0,0,1, "TAROT021.jpeg"),
  new TaroCard (22,1,0, 5,0,1,1, "TAROT022.jpeg"),
  new TaroCard (23,14,1, 5,1,0,1, "TAROT11.jpeg"),
  new TaroCard (24,13,1, 4,1,0,0, "TAROT12.jpeg"),
  new TaroCard (25,12,1, 3,1,0,0, "TAROT13.jpeg"),
  new TaroCard (26,11,1, 2,1,0,0, "TAROT14.jpeg"),
  new TaroCard (27,10,1, 1,0,0,0, "TAROT15.jpeg"),
  new TaroCard (28,9,1, 1,0,0,0, "TAROT16.jpeg"),
  new TaroCard (29,8,1, 1,0,0,0, "TAROT17.jpeg"),
  new TaroCard (30,7,1, 1,0,0,0, "TAROT18.jpeg"),
  new TaroCard (31,6,1, 1,0,0,0, "TAROT19.jpeg"),
  new TaroCard (32,5,1, 1,0,0,0, "TAROT110.jpeg"),
  new TaroCard (33,4,1, 1,0,0,0, "TAROT111.jpeg"),
  new TaroCard (34,3,1, 1,0,0,0, "TAROT112.jpeg"),
  new TaroCard (35,2,1, 1,0,0,0, "TAROT113.jpeg"),
  new TaroCard (36,1,1, 1,0,0,0, "TAROT114.jpeg"),
  new TaroCard (37,14,2, 5,1,0,1, "TAROT21.jpeg"),
  new TaroCard (38,13,2, 4,1,0,0, "TAROT22.jpeg"),
  new TaroCard (39,12,2, 3,1,0,0, "TAROT23.jpeg"),
  new TaroCard (40,11,2, 2,1,0,0, "TAROT24.jpeg"),
  new TaroCard (41,10,2, 1,0,0,0, "TAROT25.jpeg"),
  new TaroCard (42,9,2, 1,0,0,0, "TAROT26.jpeg"),
  new TaroCard (43,8,2, 1,0,0,0, "TAROT27.jpeg"),
  new TaroCard (44,7,2, 1,0,0,0, "TAROT28.jpeg"),
  new TaroCard (45,6,2, 1,0,0,0, "TAROT29.jpeg"),
  new TaroCard (46,5,2, 1,0,0,0, "TAROT210.jpeg"),
  new TaroCard (47,4,2, 1,0,0,0, "TAROT211.jpeg"),
  new TaroCard (48,3,2, 1,0,0,0, "TAROT212.jpeg"),
  new TaroCard (49,2,2, 1,0,0,0, "TAROT213.jpeg"),
  new TaroCard (50,1,2, 1,0,0,0, "TAROT214.jpeg"),
  new TaroCard (51,14,3, 5,1,0,1, "TAROT31.jpeg"),
  new TaroCard (52,13,3, 4,1,0,0, "TAROT32.jpeg"),
  new TaroCard (53,12,3, 3,1,0,0, "TAROT33.jpeg"),
  new TaroCard (54,11,3, 2,1,0,0, "TAROT34.jpeg"),
  new TaroCard (55,10,3, 1,0,0,0, "TAROT35.jpeg"),
  new TaroCard (56,9,3, 1,0,0,0, "TAROT36.jpeg"),
  new TaroCard (57,8,3, 1,0,0,0, "TAROT37.jpeg"),
  new TaroCard (58,7,3, 1,0,0,0, "TAROT38.jpeg"),
  new TaroCard (59,6,3, 1,0,0,0, "TAROT39.jpeg"),
  new TaroCard (60,5,3, 1,0,0,0, "TAROT310.jpeg"),
  new TaroCard (61,4,3, 1,0,0,0, "TAROT311.jpeg"),
  new TaroCard (62,3,3, 1,0,0,0, "TAROT312.jpeg"),
  new TaroCard (63,2,3, 1,0,0,0, "TAROT313.jpeg"),
  new TaroCard (64,1,3, 1,0,0,0, "TAROT314.jpeg"),
  new TaroCard (65,14,4, 5,1,0,1, "TAROT41.jpeg"),
  new TaroCard (66,13,4, 4,1,0,0, "TAROT42.jpeg"),
  new TaroCard (67,12,4, 3,1,0,0, "TAROT43.jpeg"),
  new TaroCard (68,11,4, 2,1,0,0, "TAROT44.jpeg"),
  new TaroCard (69,10,4, 1,0,0,0, "TAROT45.jpeg"),
  new TaroCard (70,9,4, 1,0,0,0, "TAROT46.jpeg"),
  new TaroCard (71,8,4, 1,0,0,0, "TAROT47.jpeg"),
  new TaroCard (72,7,4, 1,0,0,0, "TAROT48.jpeg"),
  new TaroCard (73,6,4, 1,0,0,0, "TAROT49.jpeg"),
  new TaroCard (74,5,4, 1,0,0,0, "TAROT410.jpeg"),
  new TaroCard (75,4,4, 1,0,0,0, "TAROT411.jpeg"),
  new TaroCard (76,3,4, 1,0,0,0, "TAROT412.jpeg"),
  new TaroCard (77,2,4, 1,0,0,0, "TAROT413.jpeg"),
  new TaroCard (78,1,4, 1,0,0,0, "TAROT414.jpeg"),
];