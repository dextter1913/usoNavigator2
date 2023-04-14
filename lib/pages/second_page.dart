import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});
  // const SecondPage({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    SecondPageArguments arguments =
        ModalRoute.of(context)?.settings.arguments as SecondPageArguments;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Segunda pantalla"),
      ),
      body: Center(
        child: Text("${arguments.name} ${arguments.lastName}"),
      ),
    );
  }
}

class SecondPageArguments {
  String name;
  String lastName;
  SecondPageArguments(this.name, this.lastName);
}
