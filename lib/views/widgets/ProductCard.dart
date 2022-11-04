import 'package:flutter/material.dart';
import '../ProductScreen.dart';
class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context,MaterialPageRoute(builder: (context) => const ProductScreen()));
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
                      child: Image.asset('assets/plant1.png')),
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
                            backgroundColor: MaterialStateProperty.all(Colors.white),
                            shadowColor: MaterialStateProperty.all(Colors.black54),
                          ),
                          onPressed: (){}, child: Container(
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
