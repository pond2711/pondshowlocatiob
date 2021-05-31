import 'package:flutter/material.dart';
import 'package:showlocation/state/authen.dart';
import 'package:showlocation/state/create_ac.dart';
import 'package:showlocation/state/myservice.dart';

final Map<String, WidgetBuilder> map = {
  '/authen':(BuildContext context) => Authen(),
  '/createAccoun':(BuildContext context) => CreateAc(),
  '/myService':(BuildContext context) => Myservice(),
};
String? keyRoute;

void main() {
  keyRoute = '/authen';
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: map,
      initialRoute: keyRoute,
    );
  }
}