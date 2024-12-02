import 'package:app/GridViewDemo.dart';
import 'package:app/examples.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(LoginExample());
}

class LoginExample extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String pas = '123456Tin';
  String userName = 'Tin';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Login Example"),
          centerTitle: true,
          backgroundColor: Colors.teal,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "User Name",
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your name';
                    }
                    if(value != userName){
                      return 'The username is not correct';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 16),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Password",
                    border: OutlineInputBorder(),
                  ),
                  obscureText: true, // Ẩn nội dung nhập vào
                  validator: (value) {
                    if (value == null || value.isEmpty) {

                      return 'Please enter your password';
                    }
                    if (value.length < 6) {
                      return 'Password must be at least 6 characters';
                    }
                    if (value != pas){
                      return 'Password is not correct';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // Chuyển sang HomePage nếu hợp lệ
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => BottomNavigationBarExample()),
                      );
                    }
                  },
                  child: Text("Submit"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}