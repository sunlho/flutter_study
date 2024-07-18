import 'package:flutter/material.dart';

main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
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

  /// 商品列表
  static List goodsList = [
    {'title': '芋泥波波奶茶', 'desc': '奶茶', 'imageUrl': 'https://s3.bmp.ovh/imgs/2022/10/31/ab8324122d3e7485.jpg'},
    {'title': '杨枝甘露', 'desc': '果茶', 'imageUrl': 'https://s3.bmp.ovh/imgs/2022/10/31/ab8324122d3e7485.jpg'},
    {'title': '冰鲜柠檬水', 'desc': '柠檬水', 'imageUrl': 'https://s3.bmp.ovh/imgs/2022/10/31/ab8324122d3e7485.jpg'},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: goodsList.map((goods) {
        return OPHomeGoodItem(goods['title'], goods['desc'], goods['imageUrl']);
      }).toList(),
    );
  }
}

class OPHomeGoodItem extends StatelessWidget {
  final String title;
  final String desc;
  final String imageUrl;

  final style1 = const TextStyle(color: Colors.orange, fontSize: 22);
  final style2 = const TextStyle(color: Colors.green, fontSize: 18);

  const OPHomeGoodItem(this.title, this.desc, this.imageUrl, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const SizedBox(width: 20),
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Image.network(imageUrl, fit: BoxFit.cover, height: 120, width: 120),
          ),
          const SizedBox(width: 20),
          Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(title, style: style1),
                  const SizedBox(height: 6),
                  Text(desc, style: style2),
                ],
              )),
        ],
      ),
    );
  }
}
