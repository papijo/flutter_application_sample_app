import 'package:http/http.dart';
import'dart:convert';

class UserProfile {
  String url; // User url for api endpoint
  String name;
  String username;
  String email;
  String phone;
  String title;

  UserProfile({this.url, this.title});

  Future <void> getData() async {
    Response response = await get('https://jsonplaceholder.typicode.com/users/$url');
    Map data = jsonDecode(response.body);


    // Set properties from Data
    name = data['name'];
    username = data['username'];
    email = data['email'];
    phone = data['phone'];

    //Print Properties
    // print(name);
    // print(username);
    // print(email);
    // print(phone);



  }
}

