import 'package:flutter/material.dart';

main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OPHomePage(),
    );
  }
}

class OPHomePage extends StatelessWidget {
  const OPHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('InputWidget'),
      ),
      body: const OPHomeContent(),
    );
  }
}

class OPHomeContent extends StatelessWidget {
  const OPHomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return const PaddingDemo();
  }
}

class PaddingDemo extends StatelessWidget {
  const PaddingDemo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Padding(
          padding: EdgeInsets.only(top: 5, bottom: 10),
          child: Text(
            'Hello Word',
            style: TextStyle(
              color: Colors.black,
              backgroundColor: Colors.amber,
            ),
          ),
        ),
        Text(
          'Hello Word',
          style: TextStyle(
            color: Colors.black,
            backgroundColor: Colors.amber,
          ),
        ),
      ],
    );
  }
}

class AlignDemo extends StatelessWidget {
  const AlignDemo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Align(
      alignment: Alignment(0.5, 0.5),
      widthFactor: 5,
      heightFactor: 5,
      child: Icon(
        Icons.favorite,
        color: Colors.red,
        size: 50,
      ),
    );
  }
}
