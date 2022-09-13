
import 'dart:convert';

import 'package:ecommerce/api/api_client.dart';
import 'package:ecommerce/model/UserModel.dart';
import 'package:http/http.dart';

class UserApi{
  ApiClient apiClient = ApiClient();
// final loginpath="login_user_login_post";
// final signuppath="create_user_signup_post";
// //late bool pathDivider;
//   Future<UserModel> getLoginPage({required String UserName,required String Password,required String Email,}) async {
//     final body = { "name": UserName,
//       "email": Email,
//       "password": Password,};
//     print(body);
//     Response response = await apiClient.invokeApi(
//         path: "login_user_login_post", method: 'POST', body: body);
//     return UserModel.fromJson(jsonDecode(response.body));
//   }
//

  Future<UserModel> signUp({
  required String UserName , required String Password, required String Email
}) async{
    String Path= "signup?email=$Email&password=$Password&name=$UserName";
    Response response = await apiClient.invokeApi(path: Path, method: "POST", body: null);
    return UserModel.fromJson(jsonDecode(response.body));
  }
}