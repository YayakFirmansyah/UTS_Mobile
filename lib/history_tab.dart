import 'package:flutter/material.dart';

class MyHistoryPage extends StatelessWidget {
  const MyHistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2, // Jumlah tab
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              titleTextStyle: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
              title: Text("Transaction History"),
              centerTitle: true,
              bottom: TabBar(
                labelColor: Colors.black,
                indicatorColor: Colors.red,
                unselectedLabelStyle: TextStyle(
                  fontWeight: FontWeight.normal,
                ),
                labelStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                tabs: [
                  Tab(text: "Pending"),
                  Tab(text: "Done"),
                ],
              ),
            ),
            body: TabBarView(
              children: [
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/trx.png',
                        width: 300,
                        height: 300,
                      ),
                      Container(
                        margin: EdgeInsets.all(5),
                        child: Text(
                          "Pending Transactions",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(5),
                        child: Text(
                          "Any pending transaction will appear in this page",
                          style: TextStyle(
                            color: Colors.blueGrey,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/trx.png',
                        width: 300,
                        height: 300,
                      ),
                      Container(
                        margin: EdgeInsets.all(5),
                        child: Text(
                          "Oops, no transaction yet!",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(5),
                        child: Text(
                          "Come on, make transactions using LinkAja and enjoy attractive promo!",
                          style: TextStyle(
                            color: Colors.blueGrey,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
