import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.brown),
        useMaterial3: true,
      ),
      home: new MyHomePage(title: 'Constraint Box'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  MyHomePageState createState() => new MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: new Text(widget.title),
      ),
      body: Row(
        children: [
          ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: 200,
              maxHeight: 100,
            ),
            child: Text(
              'Hello World! Hare Krsna Hare Krsna Krsna Krsna Hare Hare Hare Rama Hare Rama Rama Rama Rama Rama Hare Hare',
              style: TextStyle(fontSize: 20, overflow: TextOverflow.fade),
            ),
          ),
          SizedBox(
            width: 40,
          ),
          ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: 150,
              maxHeight: 50,
              minHeight: 20,
              minWidth: 60,
            ),
            child: ElevatedButton(onPressed: () {}, child: Text('Click')),
          ),
        ],
      ),
    );
  }
}
