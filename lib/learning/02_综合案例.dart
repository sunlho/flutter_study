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
        title: const Text('商品列表'),
      ),
      body: const OPHomePageBody(),
    );
  }
}

class OPHomePageBody extends StatelessWidget {
  const OPHomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        OPHomeGoodItem('饮品', '奶茶',
            'https://s3.bmp.ovh/imgs/2022/10/31/ab8324122d3e7485.jpg'),
        OPHomeGoodItem('饮品', '奶茶',
            'https://s3.bmp.ovh/imgs/2022/10/31/ab8324122d3e7485.jpg'),
        OPHomeGoodItem('饮品', '奶茶',
            'https://s3.bmp.ovh/imgs/2022/10/31/ab8324122d3e7485.jpg'),
      ],
    );
  }
}

class OPHomeGoodItem extends StatelessWidget {
  final String title;
  final String desc;
  final String imageUrl;

  // ignore: prefer_const_constructors
  final style1 = TextStyle(color: Colors.orange, fontSize: 25);
  // ignore: prefer_const_constructors
  final style2 = TextStyle(color: Colors.green, fontSize: 20);

  OPHomeGoodItem(this.title, this.desc, this.imageUrl, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(
          width: 5,
          color: Colors.black12,
        ),
      ),
      child: Column(
        children: <Widget>[
          Text(title, style: style1),
          const SizedBox(
            height: 8,
          ),
          Text(desc, style: style2),
          Image.network(imageUrl),
        ],
      ),
    );
  }
}
