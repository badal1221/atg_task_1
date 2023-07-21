import 'package:flutter/material.dart';
import 'home/screens/home_screen.dart';

class EntryScreen extends StatefulWidget {
  const EntryScreen({Key? key}) : super(key: key);

  @override
  State<EntryScreen> createState() => _EntryScreenState();
}

class _EntryScreenState extends State<EntryScreen> {

  int pageIndex=0;
  List pages = [
    const HomeScreen(),
    const HomeScreen(),
    const HomeScreen(),
    const HomeScreen(),
    const HomeScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:BottomNavigationBar(
        onTap: (index){
          setState((){
            pageIndex=index;
          });
        },
        type:BottomNavigationBarType.fixed,
        selectedItemColor: const Color(0xFF598BED),
        unselectedItemColor: Colors.grey,
        currentIndex:pageIndex,
        items:const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home,size: 30,),
              label:'Home'),
          BottomNavigationBarItem(
              icon:ImageIcon(
                AssetImage("assets/icons/Book-open.png"),
              ),
              label:'Learn'),
          BottomNavigationBarItem(
              icon:ImageIcon(
                AssetImage("assets/icons/Layout.png"),
              ),
              label:'Hub'),
          BottomNavigationBarItem(
              icon:ImageIcon(
                AssetImage("assets/icons/Comment.png"),
              ),
              label:'Chat'),
          BottomNavigationBarItem(
              icon:CustomIcon(),
              label:'Profile'),
        ],
      ),
      body: pages[pageIndex],
    );
  }
}



class CustomIcon extends StatelessWidget {
  const CustomIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
          border: Border.all(
            color: Colors.grey,
            width: 3,
          ),
          borderRadius: BorderRadius.circular(100)
      ),
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Container(
          width: 22,
          height: 22,
          decoration: const ShapeDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/tst.jpg',),
              fit: BoxFit.fill,
            ),
            shape: OvalBorder(),
          ),
        ),
      ),
    );
  }
}



