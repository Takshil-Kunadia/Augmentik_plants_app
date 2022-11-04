import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class HomeContent extends StatelessWidget {
  const HomeContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10,10,10,0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 15),
            child: Container(child: Column(crossAxisAlignment:CrossAxisAlignment.start,children: [ Text("Green",style: TextStyle(fontSize: 10),textAlign: TextAlign.left),
              Text("Plants",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),textAlign: TextAlign.left,),],),),
          ),
          Expanded(child: ListView.builder(itemBuilder: (context,index){
            return Container(
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
                            child: Image.asset('assets/plant1.jpeg')),
                        SizedBox(height: 10,),
                        Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [Text("Turf Pot Plant",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                          Text("Big Leaf Plant",style: TextStyle(color: Colors.grey),),
                          Row(children: [Text("\$45.00",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                            SizedBox(width: 30,),
                            ElevatedButton(
                              style: ButtonStyle(
                                elevation: MaterialStateProperty.all(15),
                                shape: MaterialStateProperty.all(
                                  CircleBorder(),
                                ),
                                backgroundColor: MaterialStateProperty.all(Colors.green),
                                shadowColor: MaterialStateProperty.all(Colors.black54),
                              ),
                                onPressed: (){}, child: Container(
                              child: Icon(Icons.add),
                            ),)],),],),
                      ],
                    ),
                  ),
                ),
              ),
            );
          }))
        ],
      ),
    );
  }
}
