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
      body: OPHomeContent(),
    );
  }
}

class OPHomeContent extends StatelessWidget {
  final usernameTextEditingController = TextEditingController();
  final passwordTextEditingController = TextEditingController();

  OPHomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.all(8),
      child: Column(
        children: <Widget>[
          const TextField(
            decoration: InputDecoration(
              icon: Icon(
                Icons.favorite,
                color: Colors.red,
              ),
              labelText: 'Hello World',
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          TextField(
            decoration: InputDecoration(
              icon: const Icon(
                Icons.favorite,
                color: Colors.red,
              ),
              border: const OutlineInputBorder(),
              hintText: 'Hello Flutter',
              filled: true,
              fillColor: Colors.blue[100],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          TextField(
            controller: usernameTextEditingController,
            decoration: const InputDecoration(
              icon: Icon(
                Icons.favorite,
                color: Colors.red,
              ),
              border: InputBorder.none,
              hintText: '请输入用户名',
            ),
            onChanged: (value) => {print("onChange: $value")}, //  监听输入
            onSubmitted: (value) => {print("onSubmit: $value")}, //  监听回车
          ),
          TextField(
            controller: passwordTextEditingController,
            decoration: const InputDecoration(
              icon: Icon(
                Icons.lock,
                color: Colors.black,
              ),
              hintText: '请输入密码',
              border: InputBorder.none,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          SizedBox(
            //  按钮拓展
            width: double.infinity,
            height: 40,
            child: MaterialButton(
              color: Colors.blue,
              onPressed: () {
                final username = usernameTextEditingController.text;
                final password = passwordTextEditingController.text;
                print("账号：$username 密码：$password");
              },
              child: const Text(
                '登  陆',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
