//  Modif des Parametres
import 'package:flutter/material.dart';
import 'package:booster/pmltools.dart';  // Matrice  d'arguments
import 'package:booster/paramtarot.dart';  // Type Arguments
//  Saisir le Nombre de Joueurs
// Les Largeurs Hauteurs des Cartes

class ConfigTarot extends StatefulWidget {
  @override
  _ConfigTarotState createState() => _ConfigTarotState();
}

class _ConfigTarotState extends State<ConfigTarot> {

  void initState() {

    super.initState(); // ???
  }

//***********  Function ****************
  Expanded buildSlider({Color? color, int? thisNote, int? thisFreq}) {
    // buildSlider(color: Colors.greenAccent, thisNote: 36, thisFreq: 1),
    return Expanded(
      child: Row (
        children: <Widget>[
          // Mettre  un icone de son
          IconButton(
            icon: const Icon(Icons.plus_one),
            color: Colors.redAccent,
            iconSize: 20.0,
            tooltip: 'sounds',
            onPressed: () {

            },
          ),


          Text(
             ' Hz',
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style:
            TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),


          Expanded(
            child: Slider(
              label: "text",
              activeColor: color,
              divisions: 20,
              min: 80,
              max: 120,
              value: 100,
              onChanged: (double newValue) {
                setState(() {
                  //freqMin[thisFreq] = newValue.round();


                });
              },
            ),
          ),


        ],
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    Object? commonTarot = ModalRoute.of(context)!.settings.arguments;
    //GoToMarket obj = manageCobrac.goToMarket;


    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.arrow_back),
            color: Colors.redAccent,
            iconSize: 30.0,
            tooltip: 'Home',
            onPressed: () {
              Navigator.pop(context);
            },
          ),

        ]),
        body: SafeArea(
          child: Text("test"),
        ),
      ),
    );
  }
}
