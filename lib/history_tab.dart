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
                child: Text("Pending Transactions"),
              ),
              Center(
                child: Text("Completed Transactions"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
