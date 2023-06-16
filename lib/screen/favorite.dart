import 'package:flutter/material.dart';
import 'package:toko_abah/mtrial/mtr.dart';
import 'package:toko_abah/main.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHistory extends StatefulWidget {
  const MyHistory({super.key});

  @override
  State<MyHistory> createState() => _MyHistoryState();
}

class _MyHistoryState extends State<MyHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Text(
                  'Order',
                  style: textSatu,
                ),
                Text(
                  'History',
                  style: textSatu,
                ),
                SizedBox(
                  height: 50,
                ),
                Divider(
                  thickness: 5.0,
                  color: Color.fromARGB(255, 200, 22, 28),
                ),
                Container(
                    width: 340,
                    height: 130,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 200, 22, 28),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(children: [
                      Spacer(
                        flex: 1,
                      ),
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
                                  style: textEmpat,
                                ),
                                Text(
                                  'Price : 9k',
                                  style: textTiga,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          Container(
                            color: Colors.white,
                            child: Text('0',
                                style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600)),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          IconButton(onPressed: () {}, icon: Icon(Icons.delete))
                        ],
                      ),
                      Spacer(
                        flex: 1,
                      ),
                    ])),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
