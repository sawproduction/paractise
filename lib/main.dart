import 'package:app/screens/screen.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
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
      PersistentTabController? _controller;

  @override
  void initState(){
    super.initState();
    _controller = PersistentTabController(initialIndex: 0);
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.exit_to_app),
        title: Text(widget.title),
      ),
      body: PersistentTabView(
      context,
      controller: _controller,
      screens: _screens(),
      items: _navtabs(),
      navBarStyle: NavBarStyle.style16,
      ),
    );
  }
  List<Widget> _screens(){
  return [
    MainScreen(
    ),
    MainScreen(),
    MainScreen(
    ),
    MainScreen(
    ),
    MainScreen(
    )
      ]; 
}

List<PersistentBottomNavBarItem> _navtabs() {
  return [
    PersistentBottomNavBarItem(
      icon: Icon(Icons.home),
      title: "Home"),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.wallet_giftcard),
        title: "gifts"
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.add),
        title: "Add",
        inactiveColorPrimary: Colors.grey
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.food_bank),
        title: "menu"
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.person),
        title: "Me"
      )
  ];
}
}
