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
              Container(
                height: 30,
                color: Colors.yellow,
                child: Text(
                  "Best Selling",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                ),
              ),
            ],
          )
    )
    );
  }
}
