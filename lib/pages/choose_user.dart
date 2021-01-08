import 'package:flutter/material.dart';
import 'package:flutter_application_sample_app/services/user_profile.dart';

class ChooseUser extends StatefulWidget {
  @override
  _ChooseUserState createState() => _ChooseUserState();
}

class _ChooseUserState extends State<ChooseUser> {
  List<UserProfile> userId = [
    UserProfile(url: '1',title: 'Bret'),
    UserProfile(url: '2', title: 'Antonetta'),
    UserProfile(url: '3', title: 'Samantha'),
    UserProfile(url: '4', title: 'Karianne'),
    UserProfile(url: '5', title: 'Kammen'),
    UserProfile(url: '6', title: 'Leopoldo'),
  ];

  void updateUserProfile(index) async {
    UserProfile instance = userId[index];
    await instance.getData();
    //Navigate to Home Screen
    Navigator.pop(context, {
      "name": instance.name,
      "username": instance.username,
      "email": instance.email,
      "phone": instance.phone
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.grey[850],
        title: Text('Choose a User Profile'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: userId.length,
        itemBuilder: (context, index){
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
            child: Card(
              child: ListTile(
                onTap: () {
                  updateUserProfile(index);
                },
                title: Text(userId[index].title),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage('https://images.unsplash.com/photo-1596697612480-e1b6615aec10?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=2000&q=80'),
                ),
              ),
            ),
          );
        },
      )
    );
  }
}

