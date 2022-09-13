import 'package:ecommerce/Login.dart';
import 'package:ecommerce/Nabati.dart';
import 'package:ecommerce/Shoppingcart.dart';
import 'package:ecommerce/SignUp.dart';
import 'package:ecommerce/provider/UserProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(  MultiProvider(providers: [
    ChangeNotifierProvider<UserProvider>(create: (_) => UserProvider()),
  ],
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home:LoginPage(),
    );
  }
}
