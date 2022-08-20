// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> titleList = ['Amazon', '楽天', 'Yahoo!'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('アカウントメモリーズ'),
      ),
      body: ListView.builder(
          itemCount: titleList.length,
          itemBuilder: (BuildContext context, int i) {
            return Column(
              children: [
                ListTile(
                  title: Text(titleList[i]),
                  subtitle: const Text('サブタイトル'),
                  trailing: const Icon(Icons.account_balance),
                  leading: const Icon(Icons.vpn_key),
                  onTap: () {
                    print('タップされました');
                  },
                ),
                const Divider(),
              ],
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          titleList.add('Microsoft');
          setState(() {});
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
