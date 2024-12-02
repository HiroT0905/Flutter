import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chuyển đổi nhiệt độ',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: TemperatureExample(),
    );
  }
}
class ScaffoldExcample extends StatelessWidget{
 @override
  Widget build(BuildContext context){
   return Scaffold(
     appBar: AppBar(
       title: Text('ScaffortExample')
     ),
     body: Center(
       child: Text('Hello Futter!',
         style: TextStyle(fontSize: 24, color: Colors.red),

       ),
     ),
     floatingActionButton: FloatingActionButton(
         onPressed: (){},
          child: Icon(Icons.add) ,
     ),

   );
 }
}


class StackAndContainerExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Row Example')
      ),
      body: Center(
        child: Stack(
          children: <Widget>[
            Container(
              padding:  EdgeInsets.all(16.0),

              color: Colors.red,
              child: Icon(Icons.star,
                color: Colors.yellow,
                weight: 50,
                size: 50,),
            ),
            Container(
              width: 50,
              height: 50,


            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),

    );
  }
}
  class RowExample extends StatelessWidget{
  @override
  Widget build(BuildContext context){
  return Scaffold(
  appBar: AppBar(
  title: Text('Row Example')
  ),
  body: Center(
  child: Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: <Widget>[
  Icon(Icons.star, color: Colors.red,),
  Icon(Icons.add),
  Icon(Icons.alarm)
  ],


  ),
  ),
  floatingActionButton: FloatingActionButton(
  onPressed: (){},
  child: Icon(Icons.add) ,
  ),

  );
  }
}
class IconButtonExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('IconButton Example')
      ),
      body: Center(
        child: IconButton(
          icon: Icon(Icons.thumb_up),

          onPressed: (){
            print('Icon Button Pressed');
          },

        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),

    );
  }
}

class PaddingExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Padding Example')
      ),
      body: Center(
          child: Container (
            color: Colors.blueAccent,
            child: Padding(padding: EdgeInsets.all(16.0),
                    child: Text('Padded Text',style: TextStyle(color: Colors.white),)),


          )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),

    );
  }
}

class AlignExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Padding Example')
      ),
      body: Center(
          child: Container (
            color: Colors.blueAccent,
            child: Align(alignment: Alignment.topRight,
                child: Text('Top right',style: TextStyle(color: Colors.white),)),


          )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),

    );
  }
}

class SizedBoxExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Padding Example')
      ),
      body: Center(
          child: Column (
              children: [
                Text('Love', style: TextStyle(fontSize: 24)),
                SizedBox(height: 20.0),
                Text('Like',style: TextStyle(fontSize: 24))
              ],

          )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),

    );
  }
}

class ImagesExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack Example'),
      ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('../assets/imgs/background.png',fit: BoxFit.fill),
      //    SizedBox(height: 50),
          Image.network('https://picsum.photos/250?image=9')
        ],
      ),
      
    ),
    );
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Trang 1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Đây l trang 1', style: TextStyle(fontSize: 24)),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondPage()));

              },
              child: Text('Đi đến trang 2'),

            )
          ],
        ),

      ),
    );
  }
}
class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Trang 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Đây l trang 2', style: TextStyle(fontSize: 24)),
            SizedBox(height: 20,),
            ElevatedButton(
              onPressed: (){
                Navigator.pop(context);

              },child: Text('Quay lại trang 1'),

            ),
            SizedBox(height: 20,),
            ElevatedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ThirdPage()));

              },
              child: Text('Đi đến trang 3'),
            )
          ],
        ),

      ),
    );
  }
}

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Trang 3'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Đây là trang 3', style: TextStyle(fontSize: 24)),
            SizedBox(height: 20,),
            ElevatedButton(
              onPressed: (){
                Navigator.pop(context);

              },child: Text('Quay lại trang 2'),


            ),
          SizedBox(height: 20,),
          ElevatedButton(
          onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>FirstPage()));

          },
            child: Text('Quay về trang đầu'),
          )
          ],
        ),

      ),
    );
  }
}


class TemperatureExample extends StatelessWidget {
  const TemperatureExample({super.key});
  static final TextEditingController _celsiusController = TextEditingController();
  static final TextEditingController _fahrenheitController = TextEditingController();

  void _convertCToF() {
    if (_celsiusController.text.isNotEmpty) {
      try {
        double celsius = double.parse(_celsiusController.text);
        double fahrenheit = (celsius * 9 / 5) + 32;
        _fahrenheitController.text = fahrenheit.toStringAsFixed(2);
      } catch (e) {
        _fahrenheitController.text = 'Lỗi: Vui lòng nhập số';
      }
    } else {
      _fahrenheitController.text = '';
    }
  }
  void _convertFToC() {
    if (_fahrenheitController.text.isNotEmpty) {
      try {
        double fahrenheit = double.parse(_fahrenheitController.text);
        double celsius = (fahrenheit - 32) * 5 / 9;
        _celsiusController.text = celsius.toStringAsFixed(2);
      } catch (e) {
        _celsiusController.text = 'Lỗi: Vui lòng nhập số';
      }
    } else {
      _celsiusController.text = '';
    }
  }
  void _clearAll() {
    _celsiusController.clear();
    _fahrenheitController.clear();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chuyển đổi nhiệt độ'),
        backgroundColor: Colors.lightBlue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 700,
              child: TextField(
                keyboardType: const TextInputType.numberWithOptions(decimal: true),
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  labelText: "Nhiệt độ (C)",
                  contentPadding: const EdgeInsets.all(25),
                  suffixIcon: IconButton(
                      onPressed: _clearAll,
                      icon: const Icon(Icons.clear)
                  )
                ),
                onChanged: (value) => _convertCToF,
              ),
            ),
            SizedBox(height: 20,),

            Container(
              child: Icon(Icons.arrow_downward, color: Colors.blue,),
            )
            ,
            SizedBox(height: 20,),

            Container(
              width: 700,
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Nhiệt độ (F)",
                  contentPadding: EdgeInsets.all(25),
                    suffixIcon: IconButton(
                        onPressed: _clearAll,
                        icon: Icon(Icons.clear)
                    )
                ),
              onChanged: (value) => _convertFToC,
              ),
            ),
            SizedBox(height: 20,),
            // Nút xóa tất cả
            ElevatedButton.icon(
              onPressed: _clearAll,
              icon: Icon(Icons.refresh),
              label: Text('Xóa tất cả'),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              ),
            ),
            SizedBox(height: 20,),


            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: [
                  Text(
                    'Công thức chuyển đổi:',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text('°F = (°C × 9/5) + 32'),
                  Text('°C = (°F - 32) × 5/9'),
                ],
              ),
            ),
          ],
        ),

      ),
    );
  }
}

