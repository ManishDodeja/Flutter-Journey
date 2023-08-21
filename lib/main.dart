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
        //ListView.seprated method is used define list view in dynamic manner as listview.builder. but the changes are here we need to use seprator widget to seprate each line.

        child: ListView.separated(
          itemBuilder: (context, index) {
            return Text(
              names[index],
              style: const TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
            );
          },
          itemCount: names.length,
          // scrollDirection: Axis.horizontal,
          separatorBuilder: (context, index) {
            // we use Divider widget and add height and thickness for the line.
            return const Divider(
              height: 10,
              thickness: 4,
            );
          },
        ),
      ),
    );
  }
}
