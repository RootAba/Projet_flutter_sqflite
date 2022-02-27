class client {

  int ? id;
  String nom, prenom, adresse ,numero, manche, tour_manche, epaule, taille_coud;

  client(
  { this.id,required this.nom, required this.prenom,  required this.adresse, required this.numero, required this.tour_manche, required this.taille_coud,required  this.epaule,required this.manche,});
int? get client_id  => id;
  String get client_nom => nom;
  String get client_prenom => prenom;
  String get client_adresse => adresse;
  String get client_numero=> numero;
  String get client_epaule=> epaule;
  String get client_manche => manche;
  String get client_tour_manche => tour_manche;
  String get client_taille_coud => taille_coud;

  factory client.fromJson(Map<String ,dynamic> data)
  =>  new client(
      id: data["id"],
      nom: data["nom"],
      prenom: data["prenom"],
      adresse: data["adresse"],
      numero: data["numero"],
      epaule: data["epaule"],
    manche: data["manche"],
    tour_manche: data["tour_manche"],
    taille_coud: data["taille_coud"],
  );

  Map<String ,dynamic> toJson()  =>{
    'columnId': id,
    'columnNom': nom,
    'columnPrenom': prenom,
    'columnAdresse': adresse,
    'columnNumero': numero,
    'columnEpaule': epaule,
    'columnManche': manche,
    'columnTourManche': tour_manche,
    'columnTailleCoud': taille_coud,
  };
}
/*
  Map<String, dynamic> toMap() {
    var map = <String ,dynamic>{
      'columnId': id,
      'columnNom': nom,
      'columnPrenom': prenom,
      'columnAdresse': adresse,
      'columnNumero': numero,
      'columnEpaule': epaule,
      'columnManche': manche,
      'columnTourManche': tour_manche,
      'columnTailleCoud': taille_coud,

    };

    return map;
  }*/
