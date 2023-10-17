import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class signup extends StatefulWidget {
  const signup({Key? key}) : super(key: key);

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
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
            children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                // controller: username,
                decoration: InputDecoration(labelText: 'Username',
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(0)),
                suffixIcon: Icon(Icons.people)
                ),
              ),
            ),
            Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: TextField(
                // controller: phone_no,
                decoration: InputDecoration(labelText: 'Phone no',
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(0)),
                suffixIcon: Icon(Icons.phone)
              ), 
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: TextField(
                // controller: email_id,
                decoration: InputDecoration(labelText: 'Email id',
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(0)),
                suffixIcon: Icon(Icons.email)
              ), 
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: TextField(
                // controller: city,
                decoration: InputDecoration(labelText: 'City',
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(0)),
                suffixIcon: Icon(Icons.location_city)
              ), 
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: TextField(
                // controller: password,
                decoration: InputDecoration(labelText: 'Password',
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(0)),
                suffixIcon: Icon(Icons.password_rounded)
              ),
              obscureText: true, 
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: TextField(
                // controller: re_password,
                decoration: InputDecoration(labelText: 'Renter password',
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(0)),
                suffixIcon: Icon(Icons.password_outlined)
              ),
              obscureText: true, 
            ),
          ),
          Container(child: ElevatedButton(
            onPressed: () {
                //postdata();
            },
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(253, 57, 27, 9),
                minimumSize: Size(200, 50),
              ),
              child: Text('REGISTER')
          )
          ), 
          ]
          ),
        ),
      );
  }
} 