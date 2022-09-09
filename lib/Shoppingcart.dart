import 'package:ecommerce/Nabati.dart';
import 'package:flutter/material.dart';

class ShoppingCart extends StatefulWidget {
  const ShoppingCart({Key? key}) : super(key: key);

  @override
  State<ShoppingCart> createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {},
            ),
            title: Text("ShoppingCart"),
            actions: [
              Icon(Icons.add),
              SizedBox(width: 15,),
              Icon(Icons.delete),
              SizedBox(width: 10,),
            ],
          ),
          body: Column(
              children: [
                SizedBox(
                  height: 15,
                ),
                Column(
                  children: [
                    Container(
                      height: 60,
                      width: 350,
                      child:  TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          prefixIcon: Icon(Icons.search),
                          hintText: "Search",
                          suffixIcon:Icon(Icons.keyboard_voice_outlined),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 30,
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      "Best Selling",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                    ),
                  ),
                ),
                  Container(
                    height: 160,
                    child: ListView.builder(
                        itemCount: 6,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context,int index){
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              GestureDetector(
                                onTap: (){
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Nabati()));
                                },
                                child: Container(
                                  margin:EdgeInsets.all(5) ,
                                  height: 100,
                                  width: 100,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(20)),
                                      image: DecorationImage(image: NetworkImage("https://rukminim1.flixcart.com/image/332/398/xif0q/shoe/l/u/c/10-8050-black-red-waan-black-red-original-imag5psezyhhwwks-bb.jpeg?q=50"))
                                  ),
                                ),
                              ),
                              Text("Adidas Shoe"),
                              Text("\$250"),
                            ],
                          );
                        }
                    ),
                  ),
                Container(
                  height: 30,
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      "Best Deal",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                    ),
                  ),
                ),
                Container(
                  height: 160,
                  child: ListView.builder(
                      itemCount: 6,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context,int index){
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GestureDetector(
                              onTap:(){Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Nabati()));},
                              child: Container(
                                margin:EdgeInsets.all(5) ,
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(20)),
                                    image: DecorationImage(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR45hWaze8aaXsXsVlrwtjgX4jX1nsZQP-dWw&usqp=CAU"),fit: BoxFit.fill)
                                ),
                              ),
                            ),
                            Text("Adidas Shoe"),
                            Text("\$250"),
                          ],
                        );
                      }
                  ),
                ),
                ]),
        )
    );
  }
}
