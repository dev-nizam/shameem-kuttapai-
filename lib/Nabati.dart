import 'package:flutter/material.dart';

class Nabati extends StatefulWidget {
  const Nabati({Key? key}) : super(key: key);

  @override
  State<Nabati> createState() => _NabatiState();
}

class _NabatiState extends State<Nabati> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30,top: 50),
                child: Container(
                  height: 250,
                  width: 250,
                  decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      image: DecorationImage(image: NetworkImage("https://images.meesho.com/images/products/44009963/kxwus_512.jpg"))
                  ),
                ),
              ),
              Container(
                height: 30,
                child: Text(
                  "Shoe",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                ),
              ),
              Container(
                height: 40,
                width: 60,
                child: Center(
                  child: Text(
                    "\$ 999",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                  ),
                ),
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(Radius.circular(5))
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 220,top: 10),
                height: 30,
                child: Text(
                  "Quantity",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 220,top: 10),
                height: 30,
                width: 50,
                child: Center(
                  child: Text(
                    "white",
                  ),
                ),
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(Radius.circular(5))
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,top: 70),
                child: Container(
                  height: 100,
                  width: 350,

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(child: Text("Description",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
                      Text("Canadian plant based food technology company."),
                      Text("Certified gluten-free;Soy free.Certified kosher;Certified"),
                      Text(" vegan,certified Non-GMO,All natural")
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
