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
        title: const Text('ButtonWidget'),
      ),
      body: const OPHomeContent(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class OPHomeContent extends StatelessWidget {
  const OPHomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return const ButtonDemo();
  }
}

class ButtonDemo extends StatelessWidget {
  const ButtonDemo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const SizedBox(height: 5),
        //
        MaterialButton(
          onPressed: () {},
          textColor: Colors.white,
          color: Colors.black,
          child: const Text('MaterialButton'),
        ),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange,
              // textStyle: const TextStyle(color: Colors.black),
            ),
            onPressed: () {},
            child: const Text(
              'ElevatedButton',
              style: TextStyle(color: Colors.white),
            )),
        TextButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.pink,
            // textStyle: const TextStyle(color: Colors.black),
          ),
          onPressed: () {},
          child: const Text(
            'TextButton',
            style: TextStyle(color: Colors.white),
          ),
        ),
        OutlinedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            // textStyle: const TextStyle(color: Colors.black),
          ),
          onPressed: () {},
          child: const Text(
            'OutlinedButton',
            style: TextStyle(color: Colors.white),
          ),
        ),
        MaterialButton(
          color: Colors.amber,
          child: const Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(
                Icons.favorite,
                color: Colors.red,
              ),
              Text(
                '双击',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
          onPressed: () {},
        ),
        MaterialButton(
          color: Colors.brown,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Text(
            '圆角',
            style: TextStyle(color: Colors.white),
          ),
          onPressed: () {},
        ),
        ButtonTheme(
          minWidth: 100,
          height: 30,
          child: MaterialButton(
            color: Colors.deepPurple,
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
