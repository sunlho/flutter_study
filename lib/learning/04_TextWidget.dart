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
        title: const Text('TextWeight'),
      ),
      body: const OPHomeContent(),
    );
  }
}

class OPHomeContent extends StatelessWidget {
  const OPHomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return const OPTextWidget();
  }
}

class OPTextWidget extends StatelessWidget {
  const OPTextWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const <Widget>[
        Text('基础Text'),
        Text(
          'Text样式',
          style: TextStyle(
            color: Colors.blue,
            fontSize: 25,
            backgroundColor: Colors.amber,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          '《定风波》 苏轼宋代   苏轼三月七日，沙湖道中遇雨。雨具先去，同行皆狼狈，余独不觉，已而遂晴，故作此词。莫听穿林打叶声，何妨吟啸且徐行。竹杖芒鞋轻胜马，谁怕？一蓑烟雨任平生。料峭春风吹酒醒，微冷，山头斜照却相迎。回首向来萧瑟处，归去，也无风雨也无晴。',
          textAlign: TextAlign.center,
        ),
        Text.rich(
          TextSpan(
            text: '富文本',
            style: TextStyle(color: Colors.purple, fontSize: 20),
          ),
        ),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: 'Hello Word',
                style: TextStyle(color: Colors.cyan, fontSize: 20),
              ),
              WidgetSpan(
                child: Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
              ),
              TextSpan(
                text: 'Hello Flutter',
                style: TextStyle(color: Colors.lime, fontSize: 20),
              ),
              WidgetSpan(
                child: Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
              ),
              TextSpan(
                text: 'Hello Dart',
                style: TextStyle(color: Colors.green, fontSize: 20),
              ),
            ],
          ),
        )
      ],
    );
  }
}
