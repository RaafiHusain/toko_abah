import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:toko_abah/mtrial/mtr.dart';
import 'package:toko_abah/main.dart';

class BurgerScreen extends StatefulWidget {
  const BurgerScreen({super.key});

  @override
  State<BurgerScreen> createState() => _BurgerScreenState();
}

class _BurgerScreenState extends State<BurgerScreen> {
  int _burger1 = 0;
  int _burger2 = 0;
  int _burger3 = 0;

  void tambahBurger1() {
    setState(() {
      _burger1++;
    });
  }

  void tambahBurger2() {
    setState(() {
      _burger2++;
    });
  }

  void tambahBurger3() {
    setState(() {
      _burger3++;
    });
  }

  void kurangBurger1() {
    setState(() {
      _burger1--;
    });
  }

  void kurangBurger2() {
    setState(() {
      _burger2--;
    });
  }

  void kurangBurger3() {
    setState(() {
      _burger3--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 31, 31, 31),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Text(
                  'Burgers Menu',
                  style: textBurgerSatu,
                ),
                Text(
                  'tasted like a burger',
                  style: textBurgerDua,
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: 380,
                  height: 170,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(60),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'assets/burger/chsburger.png',
                            width: 130,
                            height: 110,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Cheese Burger',
                                  style: textBurgerDes,
                                ),
                                Text(
                                  'Price : 20k',
                                  style: textBurgerDess,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: 110,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                                onPressed: kurangBurger1,
                                icon: Icon(
                                  Icons.chevron_left,
                                  color: Colors.white,
                                )),
                            Text(
                              '$_burger1',
                              style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600),
                            ),
                            IconButton(
                                onPressed: tambahBurger1,
                                icon: Icon(
                                  Icons.chevron_right,
                                  color: Colors.white,
                                ))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: 380,
                  height: 170,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(60),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'assets/burger/bbq.png',
                            width: 130,
                            height: 110,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'BBQ Burger',
                                  style: textBurgerDes,
                                ),
                                Text(
                                  'Price : 25k',
                                  style: textBurgerDess,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: 110,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                                onPressed: kurangBurger2,
                                icon: Icon(
                                  Icons.chevron_left,
                                  color: Colors.white,
                                )),
                            Text(
                              '$_burger2',
                              style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600),
                            ),
                            IconButton(
                                onPressed: tambahBurger2,
                                icon: Icon(
                                  Icons.chevron_right,
                                  color: Colors.white,
                                ))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: 380,
                  height: 170,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(60),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'assets/burger/steakhouse.png',
                            width: 130,
                            height: 110,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Steakhouse Burger',
                                  style: textBurgerDes,
                                ),
                                Text(
                                  'Price : 30k',
                                  style: textBurgerDess,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: 110,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                                onPressed: kurangBurger3,
                                icon: Icon(
                                  Icons.chevron_left,
                                  color: Colors.white,
                                )),
                            Text(
                              '$_burger3',
                              style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600),
                            ),
                            IconButton(
                                onPressed: tambahBurger3,
                                icon: Icon(
                                  Icons.chevron_right,
                                  color: Colors.white,
                                ))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                )
              ],
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
        foregroundColor: Colors.blue,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      bottomNavigationBar: BottomAppBar(
        height: 70,
        color: Colors.black,
        child: Row(
          children: [
            Text(
              'Click Add Untuk \nTambah Pesanan',
              style: GoogleFonts.poppins(color: Colors.red),
            ),
            Spacer(
              flex: 1,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Row(
                children: [
                  Text('Add', style: GoogleFonts.poppins(color: Colors.red)),
                  Icon(
                    Icons.add_shopping_cart,
                    color: Colors.red,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
