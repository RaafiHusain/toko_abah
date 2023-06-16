import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:toko_abah/mtrial/mtr.dart';
import 'package:toko_abah/main.dart';

class MyDessert extends StatefulWidget {
  const MyDessert({super.key});

  @override
  State<MyDessert> createState() => _MyDessertState();
}

class _MyDessertState extends State<MyDessert> {
  int _dissert1 = 0;
  int _dissert2 = 0;
  int _dissert3 = 0;

  void _tambahDissert1() {
    setState(() {
      _dissert1++;
    });
  }

  void _tambahDissert2() {
    setState(() {
      _dissert2++;
    });
  }

  void _tambahDissert3() {
    setState(() {
      _dissert3++;
    });
  }

  void _kurangDissert3() {
    setState(() {
      _dissert3--;
    });
  }

  void _kurangDissert2() {
    setState(() {
      _dissert2--;
    });
  }

  void _kurangDissert1() {
    setState(() {
      _dissert1--;
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
                  'Dessert Menu',
                  style: textDissertSatu,
                ),
                Text(
                  'MANTAP LURR!!!',
                  style: textDissertDua,
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
                          CircleAvatar(
                            radius: 60,
                            backgroundImage:
                                AssetImage('assets/dissert/dissert1.png'),
                          ),
                          // Image.asset(
                          //   'assets/dissert/dissert1.png',
                          //   width: 130,
                          //   height: 110,

                          // ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Vanilla Cupcake',
                                  style: textDissertDes,
                                ),
                                Text(
                                  'Price : 5k',
                                  style: textDissertDess,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: 110,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                                onPressed: _kurangDissert1,
                                icon: Icon(
                                  Icons.chevron_left,
                                  color: Colors.white,
                                )),
                            Text(
                              '$_dissert1',
                              style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600),
                            ),
                            IconButton(
                                onPressed: _tambahDissert1,
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
                          CircleAvatar(
                            radius: 60,
                            backgroundImage:
                                AssetImage('assets/dissert/dissert2.png'),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Chocolate Pudding',
                                  style: textDissertDes,
                                ),
                                Text(
                                  'Price : 9k',
                                  style: textDissertDess,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: 110,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                                onPressed: _kurangDissert2,
                                icon: Icon(
                                  Icons.chevron_left,
                                  color: Colors.white,
                                )),
                            Text(
                              '$_dissert2',
                              style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600),
                            ),
                            IconButton(
                                onPressed: _tambahDissert2,
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
                          CircleAvatar(
                            radius: 60,
                            backgroundImage:
                                AssetImage('assets/dissert/dissert3.png'),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Strowberry \nChessecake',
                                  style: textDissertDes,
                                ),
                                Text(
                                  'Price : 15k',
                                  style: textDissertDess,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: 110,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                                onPressed: _kurangDissert3,
                                icon: Icon(
                                  Icons.chevron_left,
                                  color: Colors.white,
                                )),
                            Text(
                              '$_dissert3',
                              style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600),
                            ),
                            IconButton(
                                onPressed: _tambahDissert3,
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
        foregroundColor: Colors.yellow,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      bottomNavigationBar: BottomAppBar(
        height: 80,
        color: Colors.black,
        child: Row(
          children: [
            Text(
              'Click Add Untuk \nTambah Pesanan',
              style: GoogleFonts.poppins(color: Colors.green),
            ),
            Spacer(
              flex: 1,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Row(
                children: [
                  Text('Add', style: GoogleFonts.poppins(color: Colors.green)),
                  Icon(
                    Icons.add_shopping_cart,
                    color: Colors.green,
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
