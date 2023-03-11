import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sottosopra3c/home_screen.dart';
import 'package:sottosopra3c/search_screen.dart';
import 'package:sottosopra3c/settings_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen ({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  List<Widget> pages = [

    HomeScreen(),
    SearchScreen(),
    SettingScreen()

  ];

  void chooseIndex(int index){

    setState(() {

      selectedIndex = index;
      
    });

   

  }

  int selectedIndex = 0;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: chooseIndex,
        items: const [
          BottomNavigationBarItem(icon:Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon:Icon(Icons.search),label: "Cerca"),
          BottomNavigationBarItem(icon:Icon(Icons.settings),label: "Impostazioni")
        ],
      ),

      body: pages.elementAt(selectedIndex),
      drawer: const Drawer(),
      appBar: AppBar(

      backgroundColor:const Color.fromARGB(255, 255, 255, 255),

      title: Center(child: Image.asset('lib/assets/logo.png',width: 200,)),

      actions: const[

        SizedBox(width: 50,)

      ],
      iconTheme:const IconThemeData(color: Colors.black),
      ),
    );
  }
}