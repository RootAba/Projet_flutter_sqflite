import 'package:ba_tai/drawer.dart';
import 'package:ba_tai/preferences_client.dart';
import 'package:ba_tai/recherche_client.dart';
import 'package:bs_flutter/bs_flutter.dart';
import 'package:flutter/material.dart';
import 'package:ba_tai/ajout_client.dart';


class homep extends StatefulWidget {
  const homep({Key? key}) : super(key: key);

  @override
  _homepState createState() => _homepState();
}

class _homepState extends State<homep> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:MonDrawer() ,
        appBar: AppBar(
          centerTitle: true,
          elevation: 5,
          backgroundColor: Colors.blue,
          title: Text('Tailleur'),
        ),
        body: Padding(
        padding: const EdgeInsets.all(8.0),
    child: ListView(
    children: [
    Image.asset("assets/sididia.jpg",
    height: 300,
    width: 400,
    fit: BoxFit.cover,),

    Padding(
    padding: const EdgeInsets.all(50.0),
    child: Row(mainAxisAlignment: MainAxisAlignment.center,
    children:[
      BsButton(

        onPressed:(){
        //  Navigator.push(context, MaterialPageRoute(builder: (context) =>preferences()));
        },
        style:BsButtonStyle.primary,
        size:BsButtonSize.btnIconMd,
        prefixIcon:Icons.search,
      ),
  /*  InkWell(
    onTap: () {


    // Navigator.push(context, MaterialPageRoute(builder: (context) => recherche_client()));
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
    const Color(0xff7f00ff),
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
    'Recherche Client',
    style:
    TextStyle(color: Colors.white, fontSize: 12),
    ))),
    ),*/
    Container(
    height: 3,
    width: 20,
    color: Colors.white,
    ),
      BsButton(

        onPressed:(){
          Navigator.push(context, MaterialPageRoute(builder: (context) =>ajout()));
        },
        style:BsButtonStyle.primary,
        size:BsButtonSize.btnIconMd,
        prefixIcon:Icons.person_add,
      ),
   /* InkWell(
    onTap: () {

    Navigator.push(context, MaterialPageRoute(builder: (_) =>ajout() ));
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
    'Ajouter Client', textAlign: TextAlign.center,
    style:
    TextStyle(color: Colors.white, fontSize: 12),
    ))),
    ),*/

    ]

    ),
    ),
    ],
    ),
        ) );
  }
}