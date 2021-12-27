import 'package:flutter/material.dart';
import 'tarotcartes.dart';

//import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
//import 'package:flutter_beep/flutter_beep.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tarot 1.1',
      home: const MyHomePage(title: 'Tarot 1.1'),
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
      setState(() {

      });
    }
    nonpreneur() {
      // AudioPlayer player = new AudioPlayer();
      this.setState(() {

      });
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
              TextButton(
                onPressed: onPressHander5,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    "tarot/" + tarotCartes[1].imageCarte,
                    width: 90,
                    height: 140,
                  ),
                ),
              ),
              TextButton(
                onPressed: onPressHander5,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    "tarot/" + tarotCartes[2].imageCarte,
                    width: 90,
                    height: 140,
                  ),
                ),
              ),
              TextButton(
                onPressed: onPressHander5,
                child: Image.asset(
                  "tarot/" + tarotCartes[22].imageCarte,
                  width: 90,
                  height: 140,
                ),
              ),
            ],
          ),
          Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextButton(
                onPressed: onPressHander5,
                child: Image.asset(
                  "tarot/" + tarotCartes[23].imageCarte,
                  width: 90,
                  height: 140,
                ),
              ),
              TextButton(
                onPressed: onPressHander4,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    "tarot/" + tarotCartes[24].imageCarte,
                    width: 90,
                    height: 140,
                  ),
                ),
              ),
              TextButton(
                onPressed: onPressHander3,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    "tarot/" + tarotCartes[25].imageCarte,
                    width: 90,
                    height: 140,
                  ),
                ),
              ),
              TextButton(
                onPressed: onPressHander2,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    "tarot/" + tarotCartes[26].imageCarte,
                    width: 90,
                    height: 140,
                  ),
                ),
              ),
            ],
          ),
          Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextButton(
                onPressed: onPressHander1,
                child: Image.asset(
                  "tarot/" + tarotCartes[27].imageCarte,
                  width: 80,
                  height: 120,
                ),
              ),
              TextButton(
                onPressed: onPressHander1,
                child: Image.asset(
                  "tarot/" + tarotCartes[28].imageCarte,
                  width: 80,
                  height: 120,
                ),
              ),
              TextButton(
                onPressed: onPressHander1,
                child: Image.asset(
                  "tarot/" + tarotCartes[29].imageCarte,
                  width: 80,
                  height: 120,
                ),
              ),
              TextButton(
                onPressed: onPressHander1,
                child: Image.asset(
                  "tarot/" + tarotCartes[30].imageCarte,
                  width: 80,
                  height: 120,
                ),
              ),
              TextButton(
                onPressed: onPressHander1,
                child: Image.asset(
                  "tarot/" + tarotCartes[31].imageCarte,
                  width: 80,
                  height: 120,
                ),
              ),
            ],
          ),
          Column(
            //  mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextButton(
                onPressed: onPressHander1,
                child: Image.asset(
                  "tarot/" + tarotCartes[3].imageCarte,
                  width: 80,
                  height: 120,
                ),
              ),
              TextButton(
                onPressed: onPressHander1,
                child: Image.asset(
                  "tarot/" + tarotCartes[5].imageCarte,
                  width: 80,
                  height: 120,
                ),
              ),
              TextButton(
                onPressed: onPressHander1,
                child: Image.asset(
                  "tarot/" + tarotCartes[7].imageCarte,
                  width: 80,
                  height: 120,
                ),
              ),
              TextButton(
                onPressed: onPressHander1,
                child: Image.asset(
                  "tarot/" + tarotCartes[9].imageCarte,
                  width: 80,
                  height: 120,
                ),
              ),
              TextButton(
                onPressed: onPressHander1,
                child: Image.asset(
                  "tarot/" + tarotCartes[18].imageCarte,
                  width: 80,
                  height: 120,
                ),
              ),
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
              // unused
              icon: const Icon(Icons.broken_image_sharp),
              // Voiture
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
                "GARDE SANS",
              ),
            ),
            TextButton(
              onPressed: onPressGardeContre,
              child: Text(
                "GARDE CONTRE",
              ),
            ),
          ]),
    );
  }
}
