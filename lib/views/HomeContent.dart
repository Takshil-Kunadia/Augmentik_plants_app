import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
          Expanded(child: ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemBuilder: (context,index){
            return ProductCard();
          }))
        ],
      ),
    );
  }
}
