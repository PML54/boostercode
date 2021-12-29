import 'package:flutter/material.dart';
import 'package:booster/tarotcartes.dart';

//import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tarot 1.3',
      home: const MyHomePage(title: 'Tarot 1.3'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  void playSound(String soundFileName) {
    AudioCache cache = new AudioCache();
    cache.play(soundFileName);
  }

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double widthMineur = 60;
  double heightMineur = 80;
  double widthMajeur = 85;
  double heightMajeur = 140;
  int _counter = 0;
  int _bout = 0;
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  int nb_roi = 0;
  int nb_dame = 0;
  int nb_cavalier = 0;
  int nb_valet = 0;
  int nb_petit = 0;
  int nb_21 = 0;
  int nb_excuse = 0;

  double valeurPli = 0;
  String pari = "";

  TaroDist ThisTaroDist = TaroDist(78);

  @override
  Widget build(BuildContext context) {
    razScore() {
      this.setState(() {
        valeurPli = 0;
        pari = "";
        nb_roi = 0;
        nb_dame = 0;
        nb_cavalier = 0;
        nb_valet = 0;
        nb_petit = 0;
        nb_21 = 0;
        nb_excuse = 0;
      });
    }

    preneur() {
      // AudioPlayer player = new AudioPlayer();
      setState(() {});
    }

    nonpreneur() {
      // AudioPlayer player = new AudioPlayer();
      this.setState(() {});
    }

    onPressGarde() {
      // AudioPlayer player = new AudioPlayer();
      setState(() {
        pari = "GARDE";
      });
    }

    onPressGardeSans() {
      //  AudioPlayer player = new AudioPlayer();
      this.setState(() {
        pari = "GARDE SANS";
      });
    }

    onPressGardeContre() {
      //AudioPlayer player = new AudioPlayer();
      this.setState(() {
        pari = "GARDE CONTRE";
      });
    }

    onPressHander5() {
      // AudioPlayer player = new AudioPlayer();
      //  player.play("https://bit.ly/2CH50TO");
      this.setState(() {
        valeurPli = valeurPli + 4.5;
      });
    }

    onPressHander4() {
      //  FlutterBeep.beep();
      this.setState(() {
        this.valeurPli = this.valeurPli + 3.5;
      });
    }

    onPressHander3() {
      this.setState(() {
        this.valeurPli = this.valeurPli + 2.5;
      });
    }

    onPressHander2() {
      this.setState(() {
        this.valeurPli = this.valeurPli + 1.5;
      });
    }

    onPressHander1() {
      setState(() {
        this.valeurPli = this.valeurPli + 0.5;
      });
    }

    //**
    TextButton buildCard(int couleur, int numCard)

//  0 c'est l'atout
    //   22 + 4 x14 =78
    /*
    double widthMineur = 60;
  double heightMineur = 80;
  double widthMajeur = 85;
  double heightMajeur = 140;
     */
    {
      int computeNum = 0;
      if (couleur == 0) {
        computeNum = 22 - numCard;
      } else {
        computeNum = 22 + (couleur - 1) * 14 + numCard;
      }

        widthMajeur =80;
        heightMajeur=130;


      return TextButton(
          onPressed: onPressHander4,
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: Image.asset(
              "tarot/" + tarotCartes[computeNum].imageCarte,
              width: widthMajeur,
              height: heightMajeur,
            ),
          ),
        );
    }

    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(pari + ":     " + valeurPli.toString()),
      ),
      body: Row(
        children: [
          Column(
            //   mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              buildCard(0, 0),
              buildCard(0, 20),
              buildCard(0, 21),
            ],
          ),
          Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              buildCard(1, 1),
              buildCard(1, 2),
              buildCard(1, 3),
              buildCard(1, 4),
            ],
          ),

          Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              buildCard(2, 1),
              buildCard(2, 2),
              buildCard(2, 3),
              buildCard(2, 4),
            ],
          ),

          Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              buildCard(3, 1),
              buildCard(3, 2),
              buildCard(3, 3),
              buildCard(3, 4),
            ],
          ),


          Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              buildCard(4, 1),
              buildCard(4, 2),
              buildCard(4, 3),
              buildCard(4, 4),
            ],
          ),

          Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              buildCard(1, 10),

            ],
          ),



        Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            buildCard(0, 2),


          ],
        ),


        ],

      ),

      // This trailing comma makes auto-formatting nicer for build methods.
      bottomNavigationBar: Row(
          //crossAxisAlignment: CrossAxisAlignment.center,
          //  mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            IconButton(
              // Parametres
              icon: const Icon(Icons.palette),

              iconSize: 60,
              color: Colors.deepOrange,

              onPressed: preneur,
            ),
            IconButton(
              // unused
              icon: const Icon(Icons.broken_image_sharp),

              iconSize: 60,
              color: Colors.deepOrange,

              onPressed: preneur,
            ),
            IconButton(
              // unused
              icon: const Icon(Icons.emoji_emotions_outlined),

              iconSize: 60,
              color: Colors.deepOrange,

              onPressed: nonpreneur,
            ),
            IconButton(
              // unused
              icon: const Icon(Icons.emoji_emotions_sharp),

              iconSize: 60,
              color: Colors.deepOrange,

              onPressed: razScore,
            ),
            TextButton(
              onPressed: onPressGarde,
              child: Text(
                "GARDE",
              ),
            ),
            TextButton(
              onPressed: onPressGardeSans,
              child: Text(
                "SANS",
              ),
            ),
            TextButton(
              onPressed: onPressGardeContre,
              child: Text(
                "CONTRE",
              ),
            ),
          ]),
    );
  }
}
