import 'package:augmentik_plants_app/data/firestore_helper.dart';
import 'package:augmentik_plants_app/model/CardData.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import '../../model/item.dart';
import '../ProductScreen.dart';
class ProductCard extends StatelessWidget {
  String? Name;
  String? Description;
  int? Price;
  String? ImageID;
  ProductCard(String name, String description, int price,String imageID){
    Name=name;
    Description=description;
    Price=price;
    ImageID=imageID;
  }
  static late int itemCount=0;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context,MaterialPageRoute(builder: (context) => ProductScreen(Name,Description,Price,ImageID)));
      },
      child: Container(
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Container(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image.asset('assets/${ImageID}.png')),
                  SizedBox(height: 10,),
                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [Text("${Name}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      Text("Big Leaf Plant",style: TextStyle(color: Colors.grey),),
                      Row(children: [Text("\$${Price}.00",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                        SizedBox(width: 30,),
                        ElevatedButton(
                          style: ButtonStyle(
                            elevation: MaterialStateProperty.all(15),
                            shape: MaterialStateProperty.all(
                              CircleBorder(),
                            ),
                            backgroundColor: MaterialStateProperty.all(Colors.white),
                            shadowColor: MaterialStateProperty.all(Colors.black54),
                          ),
                          onPressed: (){
                            itemCount++;
                            FirestoreHelper.create(Item(name: "Turfpot",count: itemCount));
                            //addItemtoCart("Turfpot",itemCount);
                            print(itemCount);
                          }, child: Container(
                          child: Icon(Icons.add,color: Colors.lightGreen,),
                        ),)],),],),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
