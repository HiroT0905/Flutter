import 'package:app/GridViewDemo.dart';
import 'package:app/profileExample.dart';
import 'package:flutter/material.dart';

class CardExample extends StatelessWidget{
@override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("CardExample"),
        ),      
        body: Center(
          
          child: Card(
            elevation: 5.0,
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Text("hihi"),
            ),
          ),
        ),
      ),
    );
    // TODO: implement build
    throw UnimplementedError();
  }
}

class CircleAvatarExample extends StatelessWidget{
  const CircleAvatarExample({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Circle Avatar Example"),
        ),
        body: Center(

         child: CircleAvatar(
           radius: 50,
           backgroundImage: NetworkImage("http://picsum.photos/200/200"
           ),

         ),
        ),
      ),
    );
    // TODO: implement build
    throw UnimplementedError();
  }


}
class BorderExample extends StatelessWidget{
  const BorderExample({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          // title: Text("Border Example"),
        ),
        body: Center(
          child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.blue,
                width: 3,

              )
            ),
            child: const Center(
              child: Text("Trang chủ"),
            ),
          ),
        ),
      ),
    );
    // TODO: implement build
    throw UnimplementedError();
  }
}

class BottomNavigationBarExample extends StatefulWidget{
  const BottomNavigationBarExample({super.key});
  @override
  State<BottomNavigationBarExample> createState() => _BottomNavigationBarExample();

}

class _BottomNavigationBarExample extends State<BottomNavigationBarExample>{
  // const BottomNavigationExample({super.key});
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    GridViewExample(),
    const ProfileExample()
  ];
  void _onItemTapped(int index){
    setState(() {
      _selectedIndex= index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Bottom Nav Example"),
          ),
          body: _widgetOptions.elementAt(_selectedIndex),
          bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home",
              ),

              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: "Profile"),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.amber,
            onTap: _onItemTapped,
          )
      ),
    );
    // TODO: implement build
    throw UnimplementedError();
  }
}