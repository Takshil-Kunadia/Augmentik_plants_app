import 'package:cloud_firestore/cloud_firestore.dart';

class CardData{
  final String? name;
  final String? description;
  final int? price;
  final String? imageID;

  CardData({this.name, this.description, this.price,this.imageID});

  factory CardData.fromSnapshot(DocumentSnapshot snap){
    var snapshot= snap.data() as Map<String, dynamic>;
    return CardData(name: snapshot['name'], description: snapshot['description'],price: snapshot['price'],imageID: snapshot['imageID']);
  }

  Map<String, dynamic> toJson() => {
    'name': name,
    'description': description,
    'price': price,
    'imageID': imageID,
  };

}