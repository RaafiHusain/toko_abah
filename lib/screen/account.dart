import 'package:flutter/material.dart';
import 'package:toko_abah/main.dart';

class MyAccount extends StatefulWidget {
  const MyAccount({super.key});

  @override
  State<MyAccount> createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 1000,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/wall.jpg'),
                fit: BoxFit.cover)),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  CircleAvatar(
                    radius: 80,
                    backgroundColor: Colors.lightGreen,
                    backgroundImage: AssetImage('assets/profile.jpeg'),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) {
            return const MyNavBar();
          }));
        },
        child: Icon(Icons.chevron_left),
        backgroundColor: Color.fromARGB(255, 31, 31, 31),
        foregroundColor: Colors.yellow,
      ),
    );
  }
}
