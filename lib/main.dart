import 'package:flutter/material.dart';
import 'home.dart';
void main() {
  runApp(const GrapMart());
}
class GrapMart extends StatelessWidget {
  const GrapMart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GrapMart',
      theme: ThemeData.light(),
      home: const Home(),
    );
  }
}
