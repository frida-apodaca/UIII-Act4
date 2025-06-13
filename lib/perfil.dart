import 'package:flutter/material.dart';

class Perfil extends StatelessWidget {
  final String title;

  const Perfil({Key? key, required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: const Color.fromARGB(255, 68, 175, 143),
      ),
      body: Center(
        child: Text("perfil..."),
      ),
    );
  }
}