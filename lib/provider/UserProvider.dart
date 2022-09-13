import 'package:ecommerce/Shoppingcart.dart';
import 'package:ecommerce/api/user_api.dart';
import 'package:ecommerce/api/user_api.dart';
import 'package:ecommerce/model/UserModel.dart';
import 'package:flutter/material.dart';

class UserProvider with ChangeNotifier {
  UserApi userApi = UserApi();
 late UserModel userModel;
 bool loading =false;
 bool success =false;

 signUpProvider({required String UserName,required String Password,required String Email})
 async {
   loading=true;
   userModel= await userApi.signUp(UserName: UserName, Password: Password, Email: Email);
   success =true;
   loading=false;
 }
}