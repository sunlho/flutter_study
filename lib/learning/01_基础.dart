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
  const OPHomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Hello World',
        ),
      ),
      body: const OPContentBody(),
    );
  }
}

// class OPContentBody extends StatelessWidget {
//   const OPContentBody({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           Checkbox(
//             value: true,
//             onChanged: (value) {
//               print(value);
//             },
//           ),
//           const Text('Hello Flutter'),
//         ],
//       ),
//     );
//   }
// }

class OPContentBody extends StatefulWidget {
  const OPContentBody({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return OPContentBodyState();
  }
}

class OPContentBodyState extends State<OPContentBody> {
  bool? flag = true;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Checkbox(
            value: flag,
            onChanged: (value) {
              setState(() {
                flag = value;
              });
            },
          ),
          const Text('Hello Flutter'),
        ],
      ),
    );
  }
}
