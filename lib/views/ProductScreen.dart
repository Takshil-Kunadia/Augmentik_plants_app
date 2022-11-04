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
          children: [
            Container(
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
            ),
            SizedBox(height: 30,),
            Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: Column(
                    children: [Icon(Icons.height),Text("Height",style: TextStyle(fontSize:20,fontWeight: FontWeight.bold),),Text(style: TextStyle(fontSize: 10),"40cm - 50cm")],
                  ),
                ),
                SizedBox(width: 40,),
                Container(
                  child: Column(
                    children: [Icon(Icons.thermostat),Text("Temperature",style: TextStyle(fontSize:20,fontWeight: FontWeight.bold),),Text(style: TextStyle(fontSize: 10),"18C - 20C")],
                  ),
                ),
                SizedBox(width: 40,),
                Container(
                  child: Column(
                    children: [Icon(Icons.energy_savings_leaf_outlined),Text("Pot",style: TextStyle(fontSize:20,fontWeight: FontWeight.bold),),Text(style: TextStyle(fontSize: 10),"Self-Watering Pot")],
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
