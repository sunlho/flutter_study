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
        title: const Text('布局Widget'),
      ),
      body: const OPHomeContent(),
    );
  }
}

class OPHomeContent extends StatelessWidget {
  const OPHomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return const ContainerWidget();
  }
}

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.green,
      height: 200,
      width: 200,
      alignment: const Alignment(0, 0),
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.all(10),
      // transform: Matrix4.rotationZ(50),
      decoration: BoxDecoration(
        color: Colors.blue,
        border: Border.all(width: 5, color: Colors.cyan),
        borderRadius: BorderRadius.circular(100),
        boxShadow: const [
          BoxShadow(
            color: Colors.black45,
            offset: Offset(10, 10),
            spreadRadius: 5,
            blurRadius: 10,
          ),
        ],
      ),
      child: const Icon(Icons.favorite, color: Colors.red, size: 50),
    );
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
            style:
                TextStyle(color: Colors.black, backgroundColor: Colors.amber),
          ),
        ),
        Text(
          'Hello Word',
          style: TextStyle(color: Colors.black, backgroundColor: Colors.amber),
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
      child: Icon(Icons.favorite, color: Colors.red, size: 50),
    );
  }
}
