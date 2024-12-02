import 'package:flutter/material.dart';


class ProfileExample extends StatelessWidget{
  const ProfileExample({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Hồ sơ"),
        ),
        body: Center(
          child: Container(
            width: 350,
            child: Card(
              color: Colors.lightBlue,
              elevation: 5.0,
              child: Padding(
                padding: EdgeInsets.all(50),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const CircleAvatar(
                      backgroundImage: AssetImage("../assets/imgs/R.jpg"),

                      // backgroundColor: Colors.yellow,
                      radius: 50,
                    ),
                    const SizedBox(height: 20,),
                    const Text("Tên người dùng",
                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),

                    ),
                    const SizedBox(height:12,),
                    Row(
                      children: const[
                        Icon(Icons.email),
                        SizedBox(width: 8,),
                        Text("chitin952003@gmail.com")
                      ],
                    ),
                    const SizedBox(height: 12,)
                    ,Row(
                      children: const[
                        Icon(Icons.phone),
                        SizedBox(width: 8,),
                        Text("0706389781")
                      ],
                    )

                  ],

                  ),

                ),
              ),
            ),
          )

        ),
      );
    // TODO: implement build
    throw UnimplementedError();
  }
}