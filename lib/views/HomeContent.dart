import 'package:augmentik_plants_app/data/firestore_helper.dart';
import 'package:augmentik_plants_app/model/item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../model/CardData.dart';
import 'widgets/ProductCard.dart';
class HomeContent extends StatelessWidget {
  const HomeContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10,10,10,10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Padding(
              padding: EdgeInsets.only(left: 15),
              child: Container(child: Column(crossAxisAlignment:CrossAxisAlignment.start,children: [ Text("Green",style: TextStyle(fontSize: 10),textAlign: TextAlign.left),
                Text("Plants",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),textAlign: TextAlign.left,),],),),
            ),
          ),
          StreamBuilder<List<CardData>>(
            stream: FirestoreHelper.readCard(),
            builder: (context, snapshot){
              if (snapshot.hasData) {
                final userData = snapshot.data;
                return Expanded(child: ListView.builder(
                    itemCount: userData!.length,
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemBuilder: (context,index){
                      final singlePlant = userData[index];
                      final String? name = singlePlant.name;
                      final String? description = singlePlant.description;
                      final int? price = singlePlant.price;
                      final String? imageID = singlePlant.imageID;
                      return ProductCard(name!,description!,price!,imageID!);
                    }));
              } else if (snapshot.hasError) {
                return Center(
                  child: Text("${snapshot.error}"),
                );
              }
              return const Center(child: CircularProgressIndicator());
            }
          )
        ],
      ),
    );
  }
}
