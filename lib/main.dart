import 'package:flutter/material.dart';
import 'package:flutter_appdeliveryboy/orders.dart';
import './homepage.dart';
import './orders.dart';
import './settings.dart';

void main() => runApp(MyApp());


class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}
class MyAppState extends State<MyApp> {
  int _selectedTab = 0;
  final _pageOptions = [
    Dashboard(),
    FirstScreen(),
    settings(),

  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.pink,
          primaryTextTheme: TextTheme(
            title: TextStyle(color: Colors.white),
          )),
      home: Scaffold(
        appBar:AppBar(
          title: Text('Cachycourier'),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.notifications,
                color: Colors.white,
              ),
              onPressed: () {


                // do something
              },
            )
          ],
        ),

        body: _pageOptions[_selectedTab],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedTab,
          onTap: (int index) {
            setState(() {
              _selectedTab = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_box),
              title: Text('Orders'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              title: Text('Settings'),
            ),
          ],
        ),
      ),
    );
  }}


//class MyAppState extends State<MyApp> {
//  int _selectedTab = 0;
//  final _pageOptions = [
//    HomePage(),
//    orders(),
//    settings(),
//  ];
//class Dashboard extends StatelessWidget{
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      debugShowCheckedModeBanner: false,
//      theme: ThemeData(
//        primaryColor: Colors.pink,
//        dividerColor: Colors.pink,
//      ),
//      home: DashboardScreen(),
//    );
//  }
//}
//
//class DashboardScreen extends StatelessWidget {
//  const DashboardScreen({
//    Key key,
//  }) : super(key: key);
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar:AppBar(
//        title: Text('Cachycourier'),
//        actions: <Widget>[
//          IconButton(
//            icon: Icon(
//              Icons.alarm,
//              color: Colors.white,
//            ),
//            onPressed: () {
//
//
//              // do something
//            },
//          )
//        ],
//      ),
//
//
//
//      body: IconTheme.merge(
//        data: IconThemeData(
//          color: Theme.of(context).primaryColor,
//        ),
//        child: Column(
//          children: <Widget>[
//            Padding(
//              padding: const EdgeInsets.symmetric(horizontal: 16.0),
//              child: Column(
//                mainAxisAlignment: MainAxisAlignment.center,
//                children: <Widget>[
//                  Row(
//                    children: <Widget>[
//                      Padding(
//                        padding: const EdgeInsets.all(12.0),
//                        child: Icon(Icons.create, size: 72.0),
//                      ),
//                      Expanded(
//                        child: Column(
//                          crossAxisAlignment: CrossAxisAlignment.start,
//                          children: <Widget>[
//                            Text('Name of the delivery boy'),
//                            Text(
//                              'Code',
//                              style: const TextStyle(
//                                fontWeight: FontWeight.bold,
//                              ),
//                            ),
//
//                          ],
//                        ),
//                      ),
//                    ],
//                  ),
//                  Divider(height: 1.0),
//                ],
//              ),
//            ),
//            Expanded(
//              child: Row(
//                children: <Widget>[
//                  Expanded(
//                    child: DashboardButton(
//                      icon: Icons.person,
//                      text: 'Profile',
//                      onTap: () {},
//                    ),
//                  ),
//                  Expanded(
//                    child: DashboardButton(
//                      icon: Icons.person,
//                      text: 'Edit Profile',
//                      onTap: () {},
//                    ),
//                  ),
//                  Expanded(
//                    child: DashboardButton(
//                      icon: Icons.person,
//                      text: 'Pickup-History',
//                      onTap: () {},
//                    ),
//                  ),
//                ],
//              ),
//            ),
//
//
//            Expanded(
//              child: Row(
//                children: <Widget>[
//                  Expanded(
//                    child: DashboardButton(
//                      icon: Icons.person,
//                      text: 'PickupList',
//                      onTap: () {},
//                    ),
//                  ),
//                  Expanded(
//                    child: DashboardButton(
//                      icon: Icons.person,
//                      text: 'Delivery List',
//                      onTap: () {},
//                    ),
//                  ),
//                  Expanded(
//                    child: DashboardButton(
//                      icon: Icons.person,
//                      text: 'Delivery History',
//                      onTap: () {},
//                    ),
//                  ),
//                ],
//              ),
//            ),
//
//          ],
//        ),
//      ),
//    );
//  }
//}
//
//class DashboardButton extends StatelessWidget {
//  const DashboardButton({
//    Key key,
//    @required this.icon,
//    @required this.text,
//    this.onTap,
//  }) : super(key: key);
//
//  final IconData icon;
//  final String text;
//  final VoidCallback onTap;
//
//  @override
//  Widget build(BuildContext context) {
//    return Material(
//      child: InkWell(
//        onTap: onTap,
//        child: Column(
//          mainAxisSize: MainAxisSize.min,
//          children: <Widget>[
//            FractionallySizedBox(
//              widthFactor: 0.6,
//              child: FittedBox(
//                child: Icon(icon),
//              ),
//            ),
//            SizedBox(height: 16.0),
//            Text(
//              text,
//              style: const TextStyle(
//                fontWeight: FontWeight.bold,
//              ),
//              textScaleFactor: 0.8,
//            ),
//            SizedBox(height: 4.0),
//            Padding(
//              padding: const EdgeInsets.symmetric(horizontal: 16.0),
//              child: Divider(height: 1.0),
//            ),
//          ],
//        ),
//      ),
//    );
//  }
//}
//
