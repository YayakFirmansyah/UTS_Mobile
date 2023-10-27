import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

final List<String> imgList = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];

final List<Widget> imageSliders = imgList
    .map((item) => Container(
          child: Container(
            margin: EdgeInsets.all(5.0),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              child: Image.network(item, fit: BoxFit.cover, width: 1000.0),
            ),
          ),
        ))
    .toList();

class CarouselWithIndicatorDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CarouselWithIndicatorState();
  }
}

class _CarouselWithIndicatorState extends State<CarouselWithIndicatorDemo> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Expanded(
        child: CarouselSlider(
          items: imageSliders,
          carouselController: _controller,
          options: CarouselOptions(
            autoPlay: true,
            enlargeCenterPage: true,
            aspectRatio: 2.0,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            },
          ),
        ),
      ),
      Container(
        margin: EdgeInsets.only(left: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: imgList.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => _controller.animateToPage(entry.key),
              child: Container(
                width: 12.0,
                height: 12.0,
                margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: (Theme.of(context).brightness == Brightness.dark
                          ? Colors.white
                          : Colors.red)
                      .withOpacity(_current == entry.key ? 0.9 : 0.4),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    ]);
  }
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
      backgroundColor: Colors.grey,
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 10),
                child: Image.asset(
                  'assets/images/linkaja.png',
                  height: 40,
                ),
              ),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: IconButton(
                      icon: const Icon(
                        Icons.tag,
                        color: Colors.black,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: IconButton(
                      icon: const Icon(
                        Icons.heart_broken,
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
          Container(
            height: 170,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              gradient: const LinearGradient(
                colors: [
                  Color(0xFFE52D27),
                  Color(0xFFB31217),
                ],
              ),
            ),
            margin: const EdgeInsets.all(10),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: const Text(
                      'Hi, SOFYAN NOOR ARIEF,S.ST, M.KOM',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      BoxWhite(
                        title: "Your Balance",
                        balance: "Rp. 10.184",
                      ),
                      BoxWhite(
                        title: "Bonus Balance",
                        balance: "Rp. 0",
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              color: Colors.white,
            ),
            margin: const EdgeInsets.all(10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  WidgetList(
                    iconData: Icons.add_card_outlined,
                    name: "Topup",
                  ),
                  WidgetList(
                    iconData: Icons.money,
                    name: "Send Money",
                  ),
                  WidgetList(
                    iconData: Icons.airplane_ticket_outlined,
                    name: "Ticket Code",
                  ),
                  WidgetList(
                    iconData: Icons.border_all_rounded,
                    name: "See All",
                  ),
                ]),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
            ),
            margin: const EdgeInsets.all(10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  WidgetList(
                    iconData: Icons.signal_cellular_alt,
                    name: "Pulsa/Data",
                  ),
                  WidgetList(
                    iconData: Icons.electric_bolt,
                    name: "Electricity",
                  ),
                  WidgetList(
                    iconData: Icons.library_books_outlined,
                    name: "BPJS",
                  ),
                  WidgetList(
                    iconData: Icons.gamepad_outlined,
                    name: "mgames",
                  ),
                ]),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
            ),
            margin: const EdgeInsets.all(10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  WidgetList(
                    iconData: Icons.wifi,
                    name: "Cable TV\n& Internet",
                  ),
                  WidgetList(
                    iconData: Icons.water_drop_outlined,
                    name: "PDAM",
                  ),
                  WidgetList(
                    iconData: Icons.credit_card_outlined,
                    name: "Kartu Uang Elektronik",
                  ),
                  WidgetList(
                    iconData: Icons.list,
                    name: "More",
                  ),
                ]),
          ),
          Container(
            height: 190,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: CarouselWithIndicatorDemo(),
          )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.qr_code_2_outlined),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
      ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 5.0,
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.home,
                    color: Colors.grey,
                  ),
                  Text(
                    "Home",
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.history,
                    color: Colors.grey,
                  ),
                  Text(
                    "History",
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 10, bottom: 10),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.inbox,
                    color: Colors.grey,
                  ),
                  Text(
                    "Inbox",
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.home,
                    color: Colors.grey,
                  ),
                  Text(
                    "Account",
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class WidgetList extends StatelessWidget {
  final IconData iconData;
  final String name;
  const WidgetList({
    super.key,
    required this.iconData,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: 75,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: IconButton(
              icon: Icon(
                iconData,
                color: Colors.black,
              ),
              onPressed: () {
                // Tindakan saat tombol notifikasi ditekan
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Text(
              name,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}

class BoxWhite extends StatelessWidget {
  final String title;
  final String balance;

  const BoxWhite({
    super.key,
    required this.title,
    required this.balance,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      height: 90,
      width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 10),
            child: Text(
              title,
            ),
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(top: 10, left: 10),
                child: Text(
                  balance,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Transform.scale(
                scale: 0.8,
                child: Container(
                  width: 30,
                  height: 30,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 10, left: 10),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: IconButton(
                    icon: const Icon(
                      FontAwesomeIcons.arrowRight,
                      color: Colors.white,
                      size: 12,
                    ),
                    onPressed: () {
                      // Tindakan saat tombol notifikasi ditekan
                    },
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
