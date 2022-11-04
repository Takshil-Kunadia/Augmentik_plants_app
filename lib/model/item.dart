import 'package:cloud_firestore/cloud_firestore.dart';

class Item {
  final String? name;
  final int? count;
  Item({this.name, this.count});

  Item.fromJson(Map<String, Object?> json) : this(
    name: json['name']! as String,
    count: json['count']! as int,
  );

  factory Item.fromSnapshot(DocumentSnapshot snap){
    var snapshot= snap.data() as Map<String, dynamic>;
    return Item(name: snapshot['name'], count: snapshot['count']);
  }
  Map<String, dynamic> toJson() => {
  'name': name,
  'count': count,
  };

  final cartRef = FirebaseFirestore.instance.collection('Cart').withConverter<Item>(
    fromFirestore: (snapshot, _) => Item.fromJson(snapshot.data()!),
    toFirestore: (item, _) => item.toJson(),
  );
}