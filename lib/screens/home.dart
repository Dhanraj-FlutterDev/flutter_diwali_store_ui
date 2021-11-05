import 'package:flutter/material.dart';
import 'package:flutter_diwali_store_ui/value/my_assets.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('First Screen'),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Hero(
            tag: 'hero',
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Second()));
              },
              child: Image.asset(
                MyAssets.cracker,
                height: 100,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Second extends StatelessWidget {
  const Second({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text('Second Screen'),
      ),
      body: Hero(
        tag: 'hero',
        child: Center(
          child: Image.asset(MyAssets.cracker),
        ),
      ),
    );
  }
}
