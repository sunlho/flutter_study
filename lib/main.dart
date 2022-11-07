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
    return Container();
  }
}
