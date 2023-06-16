import 'package:flutter/material.dart';
import 'package:toko_abah/main.dart';
import 'package:toko_abah/mtrial/mtr.dart';
import 'package:google_fonts/google_fonts.dart ';
import 'package:toko_abah/screen/favorite.dart';

class MyMinum extends StatefulWidget {
  const MyMinum({super.key});

  @override
  State<MyMinum> createState() => _MyMinumState();
}

class _MyMinumState extends State<MyMinum> {
  int _drink1 = 0;
  int _drink2 = 0;
  int _drink3 = 0;

  void _tambahMinum1() {
    setState(() {
      _drink1++;
    });
  }

  void _tambahMinum2() {
    setState(() {
      _drink2++;
    });
  }

  void _tambahMinum3() {
    setState(() {
      _drink3++;
    });
  }

  void _kurangMinum3() {
    setState(() {
      _drink3--;
    });
  }

  void _kurangMinum2() {
    setState(() {
      _drink2--;
    });
  }

  void _kurangMinum1() {
    setState(() {
      _drink1--;
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
                  'Drinks Menu',
                  style: textMinumSatu,
                ),
                Text(
                  'tasted like a wotah',
                  style: textMinumDua,
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: 360,
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
                            'assets/minuman/drink1.png',
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
                                  'Fresh Water',
                                  style: textMinumDes,
                                ),
                                Text(
                                  'Price : 5k',
                                  style: textMinumDess,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: 110,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                                onPressed: _kurangMinum1,
                                icon: Icon(
                                  Icons.chevron_left,
                                  color: Colors.white,
                                )),
                            Text(
                              '$_drink1',
                              style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600),
                            ),
                            IconButton(
                                onPressed: _tambahMinum1,
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
                  width: 360,
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
                            'assets/minuman/drink2.png',
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
                                  'Lemon Tea',
                                  style: textMinumDes,
                                ),
                                Text(
                                  'Price : 7k',
                                  style: textMinumDess,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: 110,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                                onPressed: _kurangMinum2,
                                icon: Icon(
                                  Icons.chevron_left,
                                  color: Colors.white,
                                )),
                            Text(
                              '$_drink2',
                              style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600),
                            ),
                            IconButton(
                                onPressed: _tambahMinum2,
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
                  width: 360,
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
                            'assets/minuman/drink3.png',
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
                                  'Cola',
                                  style: textMinumDes,
                                ),
                                Text(
                                  'Price : 9k',
                                  style: textMinumDess,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: 110,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                                onPressed: _kurangMinum3,
                                icon: Icon(
                                  Icons.chevron_left,
                                  color: Colors.white,
                                )),
                            Text(
                              '$_drink3',
                              style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600),
                            ),
                            IconButton(
                                onPressed: _tambahMinum3,
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
        foregroundColor: Colors.red,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      bottomNavigationBar: BottomAppBar(
        height: 80,
        color: Colors.black,
        child: Row(
          children: [
            Text(
              'Click Add Untuk \nTambah Pesanan',
              style: GoogleFonts.poppins(color: Colors.blue),
            ),
            Spacer(
              flex: 1,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Row(
                children: [
                  Text('Add', style: GoogleFonts.poppins(color: Colors.blue)),
                  Icon(
                    Icons.add_shopping_cart,
                    color: Colors.blue,
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
