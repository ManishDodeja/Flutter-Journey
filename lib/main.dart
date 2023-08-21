import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Container'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var names = [
      'Manish',
      'Sanjay',
      'Gopi',
      'Kanchan',
      'Muskan',
      'Ameet',
      'Pooja',
      'Shankar'
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      // ignore: prefer_const_constructors
      body: Center(
        //ListView.builder method is used define list view in dynamic manner. as below we can say that names array is printed and with the help of index we access each name from array.

        child: ListView.builder(
          itemBuilder: (context, index) {
            return Text(
              names[index],
              style: const TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
            );
          },
          itemCount: names.length,
          // the scroll direction is used for axis and item Extent is used for spacing in items
          // scrollDirection: Axis.horizontal,
          itemExtent: 100,
        ),
      ),
    );
  }
}
