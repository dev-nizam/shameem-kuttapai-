import 'package:ecommerce/Shoppingcart.dart';
import 'package:ecommerce/SignUp.dart';
import 'package:ecommerce/model/UserModel.dart';
import 'package:ecommerce/provider/UserProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late UserModel userModel;
  TextEditingController EmailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController userNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Column(
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
                  height: 200,
                  width: 350,
                  child: Column(
                    children: [

                      TextField(
                        controller: userNameController,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "username",
                            suffixIcon:Icon(Icons.lock),
                            labelText: "username"
                        ),
                      ), SizedBox(
                        height: 5,
                      ),
                      TextField(
                        controller: EmailController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Email",
                          suffixIcon:Icon(Icons.email),
                          labelText: "Email"
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      TextField(
                        controller:passwordController ,
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
                    ElevatedButton(onPressed: (){



                      Navigator.push(context, MaterialPageRoute(builder: (ctx)=>ShoppingCart()));
                    }, child: Text("Login")),
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
                         Navigator.push(context, MaterialPageRoute(builder: (ctx)=>SignUp()));
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
          ),
    ));
  }
}
