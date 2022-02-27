import 'package:ba_tai/data_helper.dart';
import 'package:ba_tai/list_details.dart';
import 'package:ba_tai/recherche_client.dart';
import 'package:bs_flutter/bs_flutter.dart';
import'package:flutter/material.dart';
import'package:ba_tai/details_client.dart';
import 'package:flutter/services.dart';
import 'package:sqflite/sqflite.dart';
import 'package:ba_tai/data_helper.dart';
class ajout extends StatefulWidget {
  //covar out({Kvar y}) : super(key: key);


  @override
  _ajoutState createState() => _ajoutState();
}

class _ajoutState extends State<ajout> {

  @override
  int? selectedId;

  TextEditingController prenom = TextEditingController();
  TextEditingController nom = TextEditingController();
  TextEditingController adresse = TextEditingController();
  TextEditingController numero = TextEditingController();
  TextEditingController epaule = TextEditingController();
  TextEditingController taille_coud = TextEditingController();
  TextEditingController manche = TextEditingController();
  TextEditingController tour_manche = TextEditingController();

 // late DatabaseHelper db ;

//final dbhelper = DatabaseHelper._instance;

 // final _KeyForm = GlobalKey<FormState>();
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                        children: [
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'ENREGISTRER CLIENT',
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextField(
                              /* onChanged: (val) {
                                  nom_cli = val;
                                },*/
                              controller: nom,

                              decoration: InputDecoration(
                                labelText: 'nom',
                                fillColor: Colors.white,
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.blue, width: 2.0
                                    )
                                ),),

                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextField(
                              controller: prenom, /*  onChanged: (val) {
                                  prenom_cli = val;
                                },*/
                              decoration: InputDecoration(
                                labelText: 'prenom',
                                fillColor: Colors.white,
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.blue, width: 2.0
                                    )
                                ),),

                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextField(
                              controller: adresse, /*  onChanged: (val) {
                                  adresse_cli = val;
                                },*/
                              decoration: InputDecoration(
                                labelText: 'Adresse',
                                fillColor: Colors.white,
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.blue, width: 2.0
                                    )
                                ),),
                              /*  onChanged:(String epaule){
getClientEpaule(epaule);
                  },*/
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextField(
                          keyboardType: TextInputType.phone,
                              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                              controller: numero, /*     onChanged: (val) {  numero = val as int;
                                },*/
                             /* validator: (value){
                                if (value!.isEmpty){
                                  return "veuillez saisir un chiffre";
                                }else if (int.tryParse(value)!< 8){
                                  return "veuillez votre saisi inf a 88";
                                }else{
                                  return null;
                                }
                              },*/
                              decoration: InputDecoration(
                                labelText: 'Numero',
                                fillColor: Colors.white,
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.blue, width: 2.0
                                    )
                                ),),
                              /* onChanged:(String nom){
                  },*/
                            ),
                          ),
                          //ajout des epaulse details
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextField( keyboardType: TextInputType.number,
                              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                              controller: epaule, /*  onChanged: (val) {
                                  adresse_cli = val;
                                },*/
                              decoration: InputDecoration(
                                labelText: 'epaule',
                                fillColor: Colors.white,
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.blue, width: 2.0
                                    )
                                ),),
                              /*  onChanged:(String epaule){
getClientEpaule(epaule);
                  },*/
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextField(keyboardType: TextInputType.number,
                              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                              controller: taille_coud, /*     onChanged: (val) {  numero = val as int;
                                },*/
                              decoration: InputDecoration(
                                labelText: 'taille coud',
                                fillColor: Colors.white,
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.blue, width: 2.0
                                    )
                                ),),
                              /* onChanged:(String nom){
                  },*/
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextField(keyboardType: TextInputType.number,
                              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                              controller: manche, /*     onChanged: (val) {  numero = val as int;
                                },*/
                              decoration: InputDecoration(
                                labelText: 'manche',
                                fillColor: Colors.white,
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.blue, width: 2.0
                                    )
                                ),),
                              /* onChanged:(String nom){
                  },*/
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextField(keyboardType: TextInputType.number,
                              inputFormatters: [FilteringTextInputFormatter.digitsOnly],

                              controller: tour_manche, /*     onChanged: (val) {  numero = val as int;
                                },*/
                              decoration: InputDecoration(
                                labelText: 'tour de manche',
                                fillColor: Colors.white,
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.blue, width: 2.0
                                    )
                                ),),
                              /* onChanged:(String nom){
                  },*/
                            ),
                          ),


                      /*    Expanded(child: RaisedButton(
                            child: Text("SAVE"),
                            onPressed: () async {
                              Navigator.push(context,MaterialPageRoute(builder: (context)=>MyApp()));
                              var cliet = new client(

                                nom:nom.text,
                                prenom:prenom.text,
                                adresse:adresse.text,
                                numero:numero.text,
                                epaule:epaule.text,
                                taille_coud:taille_coud.text,
                                manche:manche.text,
                                tour_manche: tour_manche.text
                              );
                              var db = DatabaseHelper();
                              await db.create(cliet);
                            },
                          )),*/
                         SizedBox(
                            width: 350.0,
                            height: 80.0,
                            child: BsButton(

                              onPressed:() async{
                                Navigator.push(context, MaterialPageRoute(builder: (context) =>MyApp()));
                                var cliet = new client(

                                    nom:nom.text,
                                    prenom:prenom.text,
                                    adresse:adresse.text,
                                    numero:numero.text,
                                    epaule:epaule.text,
                                    taille_coud:taille_coud.text,
                                    manche:manche.text,
                                    tour_manche: tour_manche.text
                                );
                                var db = DatabaseHelper();
                                await db.create(cliet);
                              },
                              style:BsButtonStyle.primary,
                              size:BsButtonSize.btnIconMd,
                              prefixIcon:Icons.check_box,
                            ),

                           /*InkWell(
                              onTap: () async {    Navigator.push(context,MaterialPageRoute(builder: (context)=>details_cli()));
    var cliet = new client(

    nom:nom.text,
    prenom:prenom.text,
    adresse:adresse.text,
    numero:numero.text,
    epaule:epaule.text,
    taille_coud:taille_coud.text,
    manche:manche.text,
    tour_manche: tour_manche.text
    );
    var db = DatabaseHelper();
    await db.create(cliet);
                              },

                              child: AnimatedContainer(
                                  duration: Duration(milliseconds: 500),
                                  curve: Curves.bounceOut,
                                  height: 50,
                                  width: 150,
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                          begin: Alignment.topCenter,
                                          colors: [
                                            // const Color(0xFF4CAF50),
                                            const Color(0xff318ce7),
                                            const Color(0xff00faff)
                                          ]),
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(0),
                                        bottomLeft: Radius.circular(0),
                                        topRight: Radius.circular(10),
                                        bottomRight: Radius.circular(10),
                                      )),
                                  child: Center(
                                      child: Text(
                                        'Ajouter Client',
                                        textAlign: TextAlign.center,
                                        style:
                                        TextStyle(
                                            color: Colors.white, fontSize: 12),
                                      ))),
                            ),*/
                          ),
                        ]
                    )
                ),
              )
          ),

        ],
      ),
    );
  }

}

