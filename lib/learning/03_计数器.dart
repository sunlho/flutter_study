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
        title: const Text('计数器'),
      ),
      body: const OPHomeContent(),
    );
  }
}

class OPHomeContent extends StatefulWidget {
  const OPHomeContent({super.key});

  @override
  State<OPHomeContent> createState() => _OPHomeContentState();
}

class _OPHomeContentState extends State<OPHomeContent> {
  int _num = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              MaterialButton(
                color: Colors.orange,
                child: const Text('+'),
                onPressed: () => {
                  setState(() {
                    _num++;
                  })
                },
              ),
              MaterialButton(
                color: Colors.blue,
                child: const Text('-'),
                onPressed: () => {
                  setState(() {
                    if (_num > 0) {
                      _num--;
                    }
                  })
                },
              ),
            ],
          ),
          Text('当前计数：$_num')
        ],
      ),
    );
  }
}
