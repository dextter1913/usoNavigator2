import 'package:flutter/material.dart';
import 'package:uso_navigator2/pages/second_page.dart';
// import 'package:uso_navigator2/pages/second_page.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("uso basico del Navigator 2"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => _showSecondPage(context),
          child: const Text("Mostrar Segunda Pagina"),
        ),
      ),
    );
  }

  void _showSecondPage(BuildContext context) {
    // final route = MaterialPageRoute(
    //   builder: (BuildContext context) => const SecondPage(
    //     name: "Cristian Aguirre",
    //   ),
    // );
    // Navigator.of(context).push(route);

    Navigator.of(context)
        .pushNamed("/Second", arguments: SecondPageArguments("Uendi", "Kano"));
  }
}
