import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:funda_details_component/funda_details_component.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Funda Details Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Funda Details Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(48),
          child: ElevatedButton(
            child: const Text('Push details'),
            onPressed: () => Navigator.of(context).push(
              CupertinoPageRoute(
                builder: (context) => const DetailsPage(
                  apiKey: 'ac1b0b1572524640a0ecc54de453ea9f',
                  unitId: 'ef25b3bd-dacf-4c9a-9480-38fd3bff2287',
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
