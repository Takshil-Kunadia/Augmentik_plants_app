import 'package:augmentik_plants_app/model/CardData.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';

import '../model/item.dart';

class FirestoreHelper{
  static Stream<List<Item>> read(){
    final collection = FirebaseFirestore.instance.collection("Powdha");
    return collection.snapshots().map((querySnapshots) => querySnapshots.docs.map((e) => Item.fromSnapshot(e)).toList());
  }
  static Future create(Item item) async{
    final collection = FirebaseFirestore.instance.collection("Powdha");
    final docRef = collection.doc("totalItems");
    final newItem = Item(name: item.name, count: item.count).toJson();
    await docRef.set(newItem);
  }
  static Stream<List<CardData>> readCard(){
    final collection = FirebaseFirestore.instance.collection("CardData");
    return collection.snapshots().map((querySnapshots) => querySnapshots.docs.map((e) => CardData.fromSnapshot(e)).toList());
  }
  Future<String> downloadURLExample(String imageID) async {
     String downloadURL = await FirebaseStorage.instance.ref().child(imageID).getDownloadURL();
     return downloadURL;
  }
}