import 'package:flutter/material.dart';

class KonversiScreen extends StatelessWidget {
  const KonversiScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: DefaultTabController(
        length: 3, // Number of tabs
        child: Scaffold(
          appBar: AppBar(
            title: Text('Konversi'),
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.money), text: 'Mata Uang'),
                Tab(icon: Icon(Icons.timelapse), text: 'Waktu'),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              MoneyTab(),
              TimeTab(),
            ],
          ),
        ),
      ),
    );
  }
}

class MoneyTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Konversi Mata Uang Tab',
        style: TextStyle(fontSize: 24.0),
      ),
    );
  }
}

class TimeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Konversi Waktu Tab',
        style: TextStyle(fontSize: 24.0),
      ),
    );
  }
}

