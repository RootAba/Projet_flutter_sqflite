
import 'dart:async';
import 'dart:io';
import 'package:ba_tai/list_details.dart';
import 'package:flutter/material.dart';
import'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper{
  static final table = "client";
  static final columnID = 'id';
  static final columnNom = 'nom';
  static final columnPrenom = "prenom";
  static final columnAdresse = "adresse";
  static final columnNumero = "numero";
  static final columnEpaule = "epaule";
  static final columnManche = "manche";
  static final columnTourManche = "tour_manche";
  static final columnTailleCoud = "taille_coud";


 /* DatabaseHelper._privateConstructor();
  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();
*/
  static final DatabaseHelper _instance = new DatabaseHelper.internal();
  DatabaseHelper.internal();
  factory DatabaseHelper() => _instance;

  static Database? _database;
  Future<Database> get database async => _database ??= await _initDatabase();

  Future<Database> _initDatabase() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, 'balla.db');//ma database == balla.db
    return await openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
    );
  }
  //ma table s'appel client
  Future _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE $table(
          $columnID INTEGER PRIMARY KEY autoincrement,
          $columnNom TEXT,
          $columnPrenom TEXT,
          $columnAdresse TEXT,
          $columnNumero INTEGER,
           $columnEpaule INTEGER,
            $columnManche INTEGER,
             $columnTourManche INTEGER,
              $columnTailleCoud INTEGER
      )
      ''');
    print('table creer avec succes');
  }

  Future <int> create(client client)async {
    var dbClient = await database;
    var result = await dbClient.insert(table,client.toJson());
    return result;
  }

  Future <List> findAll()async{
    var dbClient = await database;
    var result = await dbClient.query(table,columns: [
      columnID,
      columnNom,
      columnPrenom,
      columnAdresse,
      columnNumero,
      columnEpaule,
      columnManche,
      columnTourManche,
      columnTailleCoud,
    ]);
    return result.toList();
  }
}