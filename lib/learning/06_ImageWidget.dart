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
    );
  }
}

class OPHomeContent extends StatelessWidget {
  const OPHomeContent({super.key});
  final imageUrl = 'https://s3.bmp.ovh/imgs/2022/11/03/660c00e7a1bcc563.jpeg';

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Column(
          children: <Widget>[
            Image(
              // color: Colors.blue,
              // colorBlendMode: BlendMode.colorDodge,
              repeat: ImageRepeat.repeatY,
              image: NetworkImage(imageUrl),
              width: 200,
              height: 200,
              fit: BoxFit.fitWidth,
              // alignment: Alignment.topCenter,
              alignment: const Alignment(0, 0),
            ),
            Image.network(imageUrl),
            const Image(image: AssetImage('assets/images/test.jpeg')),
            FadeInImage(
              fadeInDuration: const Duration(milliseconds: 1),
              fadeOutDuration: const Duration(milliseconds: 1),
              placeholder: const AssetImage('assets/images/test.jpeg'),
              image: NetworkImage(imageUrl),
            )
          ],
        )
      ],
    );
  }
}
