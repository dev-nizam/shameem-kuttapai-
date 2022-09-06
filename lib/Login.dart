import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
          body: Column(
            children: [
              Divider(
                height: 80,
              ),
              Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                child: Image.network("https://www.onlinelogomaker.com/blog/wp-content/uploads/2017/06/shopping-online.jpg"),
              ),
              SizedBox(
                height: 80,
              ),
              Container(
                height: 50,
                child: Text("Login",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
              ),
              Container(
                height: 150,
                width: 350,
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Email",
                        suffixIcon:Icon(Icons.email),
                        labelText: "Email"
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Password",
                          suffixIcon:Icon(Icons.lock),
                          labelText: "Password"
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 280),
                child: Container(
                  height: 40,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Forgot",style: TextStyle(color: Colors.blue),
                      ),
                      Text(
                          "Password",style: TextStyle(color: Colors.blue),
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                children: [
                  ElevatedButton(onPressed: (){}, child: Text("Login")),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 30,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Text(
                            "Does not have account?"
                          ),
                        ),
                      ),
                     TextButton(onPressed: (){
                       Navigator.pop(context);
                     },
                       child: Text(
                       " Sign Up",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.blue),
                     ),)
                    ],
                  ),
                ],
              ),
            ],
          ),
    ));
  }
}
