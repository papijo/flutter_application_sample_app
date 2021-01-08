import 'package:flutter/material.dart';
import 'package:flutter_application_sample_app/services/user_profile.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  String name = 'Loading Name....';
  String username = 'Loading Username...';
  String email = 'Loading Email...';
  String phone = 'Loading Phone Number...';

  void createUserProfile() async {
    UserProfile instance = UserProfile(url: '1', title: 'Bret');
    await instance.getData();
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      "name": instance.name,
      "username": instance.username,
      "email": instance.email,
      "phone": instance.phone
    });
  }
  @override
  void initState() {
    super.initState();
    createUserProfile();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: Center(
        child: SpinKitRing(
          color: Colors.white,
          size: 200.0,
        ),
      ),
    );
  }
}


