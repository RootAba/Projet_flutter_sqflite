
import 'package:ba_tai/data_helper.dart';
import 'package:ba_tai/drawer.dart';
import 'package:ba_tai/list_details.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';


void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  final navigatorKey = GlobalKey<NavigatorState>();
  // const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var db = new DatabaseHelper();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: navigatorKey,
      home:Scaffold(
        drawer:MonDrawer() ,
        appBar: AppBar(
          title: Text('main app'),

        ),
        body:  MyHomePage()
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var db = new DatabaseHelper();
    return Padding(
      padding: EdgeInsets.all(10),
      child: FutureBuilder<List>(
        future: db.findAll(),
        builder: (context, AsyncSnapshot<List> snapshot){
          if(snapshot.hasData){
            return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context,index){
                  client contact = client.fromJson(snapshot.data![index]);
                  return Card(
                    child: ListTile(
                      title: Text(contact.nom),
                      subtitle: Text(contact.numero),
                      onTap: (){
                       /* Navigator.push(context,MaterialPageRoute(builder: (context)=>ContactDetailsPage(
                        contact: contact,)));  */
                        },
                    ),
                  );
                }
            );
          }
          else{
            return CircularProgressIndicator();
          }
        },
      ),
    );
  }
}

