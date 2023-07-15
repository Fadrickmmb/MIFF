import 'package:flutter/material.dart';

void main() {
  runApp(const Home());
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final double containerHeight = 200;
  final double newsContainerWidth = 10;
  int _currentIndex = 0;

  final tabs = [
    Center(child: Text('Home'),),
    Center(child: Text('LineUp'),),
    Center(child: Text('About Us'),)
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'MIFF',

        home: Scaffold(
          appBar: AppBar(
            title: Text('MIFF'),
            backgroundColor: Colors.black87,
          ),
          body: ListView(

            children: <Widget>[
              Container(
                height: containerHeight,
                margin: const EdgeInsets.all(2.0),
                decoration: BoxDecoration(
                    color: Colors.white70,
                    border: Border.all(color:  Colors.black)
                ),
                child: Center(child: Text('NEWS 01'),),
              ),
              Container(
                height: containerHeight,
                margin: const EdgeInsets.all(2.0),
                decoration: BoxDecoration(
                    color: Colors.white70,
                    border: Border.all(color: Colors.black)
                ),
                child: Center(child: Text('NEWS 02'),),
              ),
              Container(
                height: containerHeight,
                margin: const EdgeInsets.all(2.0),
                decoration: BoxDecoration(
                    color: Colors.white70,
                    border: Border.all(color:  Colors.black)
                ),
                child: Center(child: Text('NEWS 03'),),),
              Container(
                height: containerHeight,
                margin: const EdgeInsets.all(2.0),
                decoration: BoxDecoration(
                    color: Colors.white70,
                    border: Border.all(color:  Colors.black)
                ),
                child: Center(child: Text('NEWS 04'),),),
              Container(
                height: containerHeight,
                margin: const EdgeInsets.all(2.0),
                decoration: BoxDecoration(
                    color: Colors.white70,
                    border: Border.all(color:  Colors.black)
                ),
                child: Center(child: Text('NEWS 05'),),),
              Container(
                height: containerHeight,
                margin: const EdgeInsets.all(2.0),
                decoration: BoxDecoration(
                    color: Colors.white70,
                    border: Border.all(color:  Colors.black)
                ),
                child: Center(child: Text('NEWS 06'),),),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currentIndex,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                label: 'Home',
                icon: Icon(Icons.home),
                backgroundColor: Colors.black87,
              ),
              BottomNavigationBarItem(
                label: 'LineUp',
                icon: Icon(Icons.list),
                backgroundColor: Colors.black87,
              ),
              BottomNavigationBarItem(
                label: 'About Us',
                icon: Icon(Icons.person),
                backgroundColor: Colors.black87,
              ),
            ],
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
        )
    );
  }
}




