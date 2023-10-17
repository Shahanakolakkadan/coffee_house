import 'package:coffee_house/layout/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 237, 236, 235),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(253, 57, 27, 9),
        title: Text('LOGIN'),
      ),
      body: SingleChildScrollView(
        child: Column(
         children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top:110.0),
            child: Center(
              child: Container(
                width: 200,
                height: 100,
              child: Image.asset('assets/logo.jpeg')),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "phone number,email or username",
                suffixIcon: Icon(Icons.email),
                hintText: "Enter valid email id as abc@gmail.com",
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password', 
                  suffixIcon: Icon(Icons.password),
                  hintText: 'Enter secure password'),
                  
              ),
          ),
          SizedBox(
            height: 65,
            width: 360,
            child: Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(253, 57, 27, 9),
                    minimumSize: Size(150, 50),
                  ),
                  child: Text('Login', style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  onPressed: () {
                    // print('Successfully log in');
                  },
                ),
              ),
            ),
          ),
         
          Row(
              children: <Widget>[
                const Text('Does not have account?'),
                TextButton(
                  child: const Text(
                    'Sign in',
                    style: TextStyle(fontSize: 14, color: Colors.blue),  
                  ),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => signup()));
                  },
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
        ], 
        )
      ),
      

    );
  }
}