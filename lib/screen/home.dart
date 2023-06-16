import 'package:flutter/material.dart';
import 'package:toko_abah/mtrial/mtr.dart';
import 'package:toko_abah/screen/account.dart';
import 'package:toko_abah/screen/burger.dart';
import 'package:toko_abah/screen/dessert.dart';
import 'package:toko_abah/screen/minum.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  GlobalKey<ScaffoldState> _scaffoldState = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldState,
      drawer: _buildDrawrer(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        _scaffoldState.currentState?.openDrawer();
                      },
                      icon: Icon(Icons.menu)),
                  Spacer(
                    flex: 10,
                  ),
                  Icon(Icons.location_on,
                      color: Color.fromARGB(255, 145, 2, 2)),
                  Text(
                    'Batutulis,',
                    style: textBar,
                  ),
                  Text(
                    'bogor',
                    style: textBarsatu,
                  ),
                  Spacer(
                    flex: 10,
                  ),
                  Container(
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/profile.jpeg'),
                    ),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 50),
                decoration: BoxDecoration(),
                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start, // Menentukan rata kiri
                  children: [
                    Text(
                      'Abah FastFood',
                      style: textSatu,
                      textAlign: TextAlign.left,
                    ),
                    Text(
                      'Ayok pesan di abah fastfood',
                      style: textDua,
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              SizedBox(
                width: 380,
                height: 150,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 200, 22, 28),
                      onPrimary: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) {
                      return const BurgerScreen();
                    }));
                  },
                  child: Row(
                    children: [
                      Image.asset('assets/images/buger.png'),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Spacer(
                            flex: 1,
                          ),
                          Text(
                            'Burgers \nMenu',
                            style: textEmpat,
                          ),
                          Text(
                            '"Click and see\n'
                            'Burgers we \nhave"',
                            style: textTiga,
                          ),
                          Spacer(
                            flex: 1,
                          ),
                        ],
                      ),
                      Spacer(
                        flex: 1,
                      ),
                      Icon(Icons.arrow_forward_ios),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              SizedBox(
                width: 380,
                height: 150,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 200, 22, 28),
                      onPrimary: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) {
                      return const MyMinum();
                    }));
                  },
                  child: Row(
                    children: [
                      Image.asset('assets/drnks.png'),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Spacer(
                            flex: 1,
                          ),
                          Text(
                            'Drinks Menu',
                            style: textEmpat,
                          ),
                          Text(
                            '"Click and see\n'
                            'The Fresh\n Cold Drinks"',
                            style: textTiga,
                          ),
                          Spacer(
                            flex: 1,
                          ),
                        ],
                      ),
                      Spacer(
                        flex: 1,
                      ),
                      Icon(Icons.arrow_forward_ios),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              SizedBox(
                width: 380,
                height: 150,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 200, 22, 28),
                      onPrimary: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) {
                      return const MyDessert();
                    }));
                  },
                  child: Row(
                    children: [
                      Image.asset('assets/dssrt.png'),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Spacer(
                            flex: 1,
                          ),
                          Text(
                            'Desserts\n Menu',
                            style: textEmpat,
                          ),
                          Text(
                            '"Click and see\n'
                            'tasty desserts"',
                            style: textTiga,
                          ),
                          Spacer(
                            flex: 1,
                          ),
                        ],
                      ),
                      Spacer(
                        flex: 1,
                      ),
                      Icon(Icons.arrow_forward_ios),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDrawrer() {
    return SizedBox(
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: Image.asset('assets/profile.jpeg'),
              accountName: Text('Nama'),
              accountEmail: Text('Email'),
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/spls.jpg'),
                    fit: BoxFit.cover),
              ),
            ),
            ListTile(
              leading: Icon(Icons.account_box),
              title: Text('Profil'),
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) {
                  return const MyAccount();
                }));
              },
            ),
            ListTile(
              leading: Icon(Icons.add_shopping_cart),
              title: Text('Cart'),
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }
}
