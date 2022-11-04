import 'package:cloud_firestore/cloud_firestore.dart';

class item {
  final String name;
  final int count;
  item({required this.name,required this.count});

  item.fromJson(Map<String, Object?> json) : this(
    name: json['name']! as String,
    count: json['count']! as int,
  );

  Map<String, Object?> toJson() {
    return {
      'name': name,
      'count': count,
    };
  }
  final cartRef = FirebaseFirestore.instance.collection('Cart').withConverter<item>(
    fromFirestore: (snapshot, _) => item.fromJson(snapshot.data()!),
    toFirestore: (item, _) => item.toJson(),
  );
}