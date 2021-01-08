import 'package:flutter/material.dart';
import 'package:flutter_application_sample_app/pages/home.dart';
import 'package:flutter_application_sample_app/pages/loading.dart';
import 'package:flutter_application_sample_app/pages/choose_user.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    '/' : (context) => Loading(),
    '/home': (context) => Home(),
    '/user': (context) => ChooseUser(),
  },
));
