import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};



  @override
  Widget build(BuildContext context) {

    data = data.isNotEmpty ? data : ModalRoute.of(context).settings.arguments;
    print(data);
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage('https://images.unsplash.com/photo-1436891620584-47fd0e565afb?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTN8fG5pZ2h0JTIwc2t5fGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60'),
            fit: BoxFit.cover,
          )
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 120.0, 0 , 0),
          child: SafeArea(
            child: Column(
              children: <Widget>[
                FlatButton.icon(
                  onPressed: () async {
                    dynamic result = await Navigator.pushNamed(context, '/user');
                    setState(() {
                      data = {
                        "name": result['name'],
                        "username": result['username'],
                        "phone": result['phone'],
                        "email": result['email'],
                      };
                    });
                  },
                  icon: Icon(
                      Icons.supervisor_account,
                    color: Colors.grey[300],
                  ),
                  label: Text(
                      'Choose a User',
                    style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.grey[300]
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Name: ',
                      style: TextStyle(
                        fontSize: 28.0,
                        letterSpacing: 2.0,
                        color: Colors.grey[300]
                      ),
                    ),
                    Text(
                      data['name'],
                      style: TextStyle(
                        fontSize: 28.0,
                        letterSpacing:2.0,
                        color: Colors.grey[300]
                      ) ,
                    )
                  ],
                ),
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Username: ',
                      style: TextStyle(
                        fontSize: 28.0,
                        color: Colors.grey[300],
                        letterSpacing: 2.0,
                      ),
                    ),
                    Text(
                      data['username'],
                      style: TextStyle(
                        fontSize: 28.0,
                        color: Colors.grey[300]
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Email: ',
                      style: TextStyle(
                        fontSize: 28.0,
                        color: Colors.grey[300],
                        letterSpacing: 2.0,
                      ),
                    ),
                    Text(
                      data['email'],
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.grey[300]
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Phone: ',
                      style: TextStyle(
                        fontSize: 28.0,
                        color: Colors.grey[300],
                        letterSpacing: 2.0,
                      ),
                    ),
                    Text(
                      data['phone'],
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.grey[300]
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
