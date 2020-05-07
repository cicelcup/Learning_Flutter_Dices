import 'package:flutter/material.dart';
import 'about.dart';

class MyDicesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: SafeArea(
          child: AboutAPP(),
        ),
      ),
      body: Center(
        child: Text(
          "Jorge Peroza",
        ),
      ),
    );
  }
}
