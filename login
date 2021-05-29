import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            shadowColor: Colors.orange,
            title: Center(child: Text('Student Log in')),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Please Login To Continue',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.cyan,
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Container(
                  width: 350,
                  child: TextField(
                      decoration: InputDecoration(
                          suffixIcon: Icon(Icons.email),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.purple,
                            ),
                            borderRadius: BorderRadius.circular(18.0),
                          ),
                          hintText: 'Enter your email')),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 350,
                  child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          suffixIcon: Icon(Icons.visibility_off),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.purple,
                            ),
                            borderRadius: BorderRadius.circular(18.0),
                          ),
                          hintText: 'Enter your password')),
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    // background color
                    primary: Colors.cyan,
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 21),
                    textStyle: TextStyle(fontSize: 20),
                  ),
                  child: Text('Login'),
                  onPressed: () {},
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      InkWell(
                          child: Text(
                            "Register Here!",
                            style: TextStyle(
                              color: Colors.blue,
                              decoration: TextDecoration.underline,
                              fontSize: 18,
                            ),
                          ),
                          onTap: () async {})
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
