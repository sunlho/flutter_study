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
    return const Padding(
      padding: EdgeInsets.all(20),
      /**
       * Stack 默认大小包裹内容
       * - fit: StackFit.expand 尽可能大的扩充元素
       */
      child: StackWidget(),
    );
  }
}

class StackWidget extends StatelessWidget {
  const StackWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      // fit: StackFit.expand,
      children: <Widget>[
        Image.asset(
          'assets/images/test.jpeg',
          width: 300,
        ),
        Container(
          height: 80,
          width: 200,
          color: Colors.cyan,
        ),
        const Positioned(
          left: 10,
          bottom: 10,
          child: Text(
            'Hello Flutter',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: Container(
            alignment: AlignmentDirectional.center,
            color: Colors.brown[500],
            width: double.infinity,
            child: const Text(
              'Hello world',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
      ],
    );
  }
}

class ExpandedDemo extends StatelessWidget {
  const ExpandedDemo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Container(height: 60, width: 60, color: Colors.red),
          ),
          Expanded(
            child: Container(height: 100, width: 120, color: Colors.green),
          ),
          Container(height: 80, width: 90, color: Colors.blue),
          Container(height: 120, width: 50, color: Colors.orange),
        ],
      ),
    );
  }
}

class ColumnDemo extends StatelessWidget {
  const ColumnDemo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      verticalDirection: VerticalDirection.down,
      children: <Widget>[
        Container(height: 60, width: 80, color: Colors.red),
        Container(height: 100, width: 120, color: Colors.green),
        Container(height: 80, width: 90, color: Colors.blue),
        Container(height: 120, width: 50, color: Colors.orange),
      ],
    );
  }
}

class RowDemo extends StatelessWidget {
  const RowDemo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      /**
       * 主轴 mainAxisAlignment
       * 交叉轴 crossAxisAlignment
       */
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Container(height: 60, width: 80, color: Colors.red),
        Container(height: 100, width: 120, color: Colors.green),
        Container(height: 80, width: 90, color: Colors.blue),
        Container(height: 120, width: 50, color: Colors.orange),
      ],
    );
  }
}

class ButtonRowDemo extends StatelessWidget {
  const ButtonRowDemo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: MaterialButton(
        color: Colors.cyan,
        child: Row(
          /**
           * Row特点:
           * - 水平方向尽可能占用更大的空间
           *   * 水平方向希望包裹内容 设置mainAxisSize: MainAxisSize.min
           */
          // mainAxisSize: MainAxisSize.min,
          children: const <Widget>[
            Icon(Icons.favorite, color: Colors.red),
            Text("喜欢")
          ],
        ),
        onPressed: () => print('点击按钮'),
      ),
    );
  }
}
