import 'package:flutter/material.dart';
import 'package:backdrop/backdrop.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Backdrop(),
    );
  }
}

class Backdrop extends StatelessWidget {
  const Backdrop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BackdropScaffold(
      appBar: BackdropAppBar(
        title: const Text("Backdrop Example"),
        actions: const [
          BackdropToggleButton(
            icon: AnimatedIcons.list_view,
          ),
        ],
      ),
      backLayer: const Center(
        child: Text("Back Layer"),
      ),
      frontLayer: const Center(
        child: Text("Front Layer"),
      ),
    );
  }
}
