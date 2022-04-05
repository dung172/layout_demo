import 'package:flutter/material.dart';
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static var stars = Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      Icon(Icons.star, color: Colors.green),
      Icon(Icons.star, color: Colors.green),
      Icon(Icons.star, color: Colors.green),
      const Icon(Icons.star, color: Colors.black),
      const Icon(Icons.star, color: Colors.black),
    ],
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
        title: const Text(
          'hellocn',
          textDirection: TextDirection.ltr,
          style: TextStyle(
            color: Colors.green,
            fontWeight: FontWeight.w900,
            fontSize: 20,
          ),
        ),
        ),
        body:  Center(
          child:  Row(
           mainAxisSize: MainAxisSize.min,
            children: [
              stars,
              Expanded(child: Image.asset('image/download.jpg'),),
              Expanded( child: Image.asset('image/wall.jpg')),
            ],
          ),
        ),
      ),
    );
  }
}