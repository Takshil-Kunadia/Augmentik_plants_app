import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class ProductScreen extends StatelessWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.lightGreen[600],
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              constraints: BoxConstraints(
                minWidth: MediaQuery.of(context).size.width
              ),
              height: 600,
              child: Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(90)),
                ),
                child: Container(
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: Image.asset('assets/plant1.png')),
                        SizedBox(height: 35,),
                        Row(
                          children: [
                            SizedBox(width: 35,),
                            Flexible(
                              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                children: [Text("Turf Pot Plant",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),),
                                  Text("Big Leaf Plant",style: TextStyle(color: Colors.grey),),
                                  Text(style: TextStyle(fontSize: 10),"Plant in a Glassbowl, which can be mounted at Augmentic Labs to embellish the Company's Interiorr as well as display  its deep emphasis on Environment"),
                                  Row(children: [Text("\$45.00",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
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
                                      onPressed: (){}, child: Container(
                                      child: Icon(Icons.add,color: Colors.lightGreen,),
                                    ),)],),],),
                            ),
                            SizedBox(width: 20,),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 40,),
            Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: Column(
                    children: [Icon(Icons.height,color: Colors.white,),Text("Height",style: TextStyle(fontSize:20,fontWeight: FontWeight.bold,color: Colors.white,),),Text(style: TextStyle(fontSize: 10,color: Colors.white,),"40cm - 50cm")],
                  ),
                ),
                SizedBox(width: 20,),
                Container(
                  child: Column(
                    children: [Icon(Icons.thermostat,color: Colors.white,),Text("Temperature",style: TextStyle(fontSize:20,fontWeight: FontWeight.bold,color: Colors.white,),),Text(style: TextStyle(fontSize: 10,color: Colors.white,),"18C - 20C")],
                  ),
                ),
                SizedBox(width: 20,),
                Container(
                  child: Column(
                    children: [Icon(Icons.energy_savings_leaf_outlined,color: Colors.white,),Text("Pot",style: TextStyle(fontSize:20,fontWeight: FontWeight.bold,color: Colors.white,),),Text(style: TextStyle(fontSize: 10,color: Colors.white,),"Self-Watering Pot")],
                  ),
                ),
              ],
            ),
          )],
        ),
      ),
    );
  }
}
