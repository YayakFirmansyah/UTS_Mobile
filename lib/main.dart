import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LinkAja',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(left: 8.0),
                child: Image.asset(
                  'assets/images/linkaja.png',
                  height: 40,
                ),
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: IconButton(
                      icon: const Icon(
                        FontAwesomeIcons.tags,
                        color: Colors.black,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: IconButton(
                      icon: const Icon(
                        FontAwesomeIcons.heart,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        // Tindakan saat tombol notifikasi ditekan
                      },
                    ),
                  )
                ],
              ),
            ],
          ),
          Card(
            color: Colors.red,
            margin: EdgeInsets.all(10),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Hi, SOFYAN NOOR ARIEF,S.ST, M.KOM',
                  ),
                  Text(
                    'Rp 1.000.000',
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
