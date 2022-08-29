import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_ui_interoperabilitas/screens/page_beranda.dart';

class ManajemenTugas extends StatefulWidget {
  const ManajemenTugas({Key? key}) : super(key: key);

  @override
  State<ManajemenTugas> createState() => _ManajemenTugasState();
}

class _ManajemenTugasState extends State<ManajemenTugas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Manajemen Tugas'),
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromRGBO(49, 54, 68, 1),
      ),
      backgroundColor: Color.fromRGBO(28, 32, 42, 1),
      body: Container(
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(20, 25, 30, 0),
                  child: Text(
                    'Selamat Datang di\nManajemen Tugas.',
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Container(
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(49, 54, 68, 1),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    margin: EdgeInsets.fromLTRB(0, 25, 30, 0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return BerandaUser();
                        }));
                      },
                      child: Padding(
                        padding: EdgeInsets.all(9),
                        child: FaIcon(
                          FontAwesomeIcons.home,
                          color: Colors.white,
                          size: 22,
                        ),
                      ),
                    )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(20, 25, 0, 0),
                  child: Text(
                    'Tabel data tugas :',
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Container(
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(49, 54, 68, 1),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    margin: EdgeInsets.fromLTRB(90, 25, 30, 0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return ManajemenTugas();
                        }));
                      },
                      child: Padding(
                        padding: EdgeInsets.all(7),
                        child: FaIcon(
                          FontAwesomeIcons.plus,
                          color: Colors.white,
                          size: 22,
                        ),
                      ),
                    )),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(5)),
              margin: EdgeInsets.fromLTRB(20, 25, 20, 0),
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                    'Tugas Laporan Akhir Interoperabilitas.',
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 11,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Container(
                      margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return ManajemenTugas();
                          }));
                        },
                        child: Padding(
                          padding: EdgeInsets.all(7),
                          child: FaIcon(
                            FontAwesomeIcons.pen,
                            color: Color.fromARGB(255, 114, 105, 227),
                            size: 18,
                          ),
                        ),
                      )),
                  Container(
                      margin: EdgeInsets.fromLTRB(5, 0, 0, 0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return ManajemenTugas();
                          }));
                        },
                        child: Padding(
                          padding: EdgeInsets.all(7),
                          child: FaIcon(
                            FontAwesomeIcons.trash,
                            color: Colors.red[400],
                            size: 18,
                          ),
                        ),
                      )),
                ]),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(5)),
              margin: EdgeInsets.fromLTRB(20, 25, 20, 0),
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                    'Tugas Laporan Akhir Interoperabilitas.',
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 11,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Container(
                      margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return ManajemenTugas();
                          }));
                        },
                        child: Padding(
                          padding: EdgeInsets.all(7),
                          child: FaIcon(
                            FontAwesomeIcons.pen,
                            color: Color.fromARGB(255, 114, 105, 227),
                            size: 18,
                          ),
                        ),
                      )),
                  Container(
                      margin: EdgeInsets.fromLTRB(5, 0, 0, 0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return ManajemenTugas();
                          }));
                        },
                        child: Padding(
                          padding: EdgeInsets.all(7),
                          child: FaIcon(
                            FontAwesomeIcons.trash,
                            color: Colors.red[400],
                            size: 18,
                          ),
                        ),
                      )),
                ]),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(5)),
              margin: EdgeInsets.fromLTRB(20, 25, 20, 0),
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                    'Tugas Laporan Akhir Interoperabilitas.',
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 11,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Container(
                      margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return ManajemenTugas();
                          }));
                        },
                        child: Padding(
                          padding: EdgeInsets.all(7),
                          child: FaIcon(
                            FontAwesomeIcons.pen,
                            color: Color.fromARGB(255, 114, 105, 227),
                            size: 18,
                          ),
                        ),
                      )),
                  Container(
                      margin: EdgeInsets.fromLTRB(5, 0, 0, 0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return ManajemenTugas();
                          }));
                        },
                        child: Padding(
                          padding: EdgeInsets.all(7),
                          child: FaIcon(
                            FontAwesomeIcons.trash,
                            color: Colors.red[400],
                            size: 18,
                          ),
                        ),
                      )),
                ]),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(5)),
              margin: EdgeInsets.fromLTRB(20, 25, 20, 0),
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                    'Tugas Laporan Akhir Interoperabilitas.',
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 11,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Container(
                      margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return ManajemenTugas();
                          }));
                        },
                        child: Padding(
                          padding: EdgeInsets.all(7),
                          child: FaIcon(
                            FontAwesomeIcons.pen,
                            color: Color.fromARGB(255, 114, 105, 227),
                            size: 18,
                          ),
                        ),
                      )),
                  Container(
                      margin: EdgeInsets.fromLTRB(5, 0, 0, 0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return ManajemenTugas();
                          }));
                        },
                        child: Padding(
                          padding: EdgeInsets.all(7),
                          child: FaIcon(
                            FontAwesomeIcons.trash,
                            color: Colors.red[400],
                            size: 18,
                          ),
                        ),
                      )),
                ]),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(5)),
              margin: EdgeInsets.fromLTRB(20, 25, 20, 0),
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                    'Tugas Laporan Akhir Interoperabilitas.',
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 11,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Container(
                      margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return ManajemenTugas();
                          }));
                        },
                        child: Padding(
                          padding: EdgeInsets.all(7),
                          child: FaIcon(
                            FontAwesomeIcons.pen,
                            color: Color.fromARGB(255, 114, 105, 227),
                            size: 18,
                          ),
                        ),
                      )),
                  Container(
                      margin: EdgeInsets.fromLTRB(5, 0, 0, 0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return ManajemenTugas();
                          }));
                        },
                        child: Padding(
                          padding: EdgeInsets.all(7),
                          child: FaIcon(
                            FontAwesomeIcons.trash,
                            color: Colors.red[400],
                            size: 18,
                          ),
                        ),
                      )),
                ]),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(5)),
              margin: EdgeInsets.fromLTRB(20, 25, 20, 0),
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                    'Tugas Laporan Akhir Interoperabilitas.',
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 11,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Container(
                      margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return ManajemenTugas();
                          }));
                        },
                        child: Padding(
                          padding: EdgeInsets.all(7),
                          child: FaIcon(
                            FontAwesomeIcons.pen,
                            color: Color.fromARGB(255, 114, 105, 227),
                            size: 18,
                          ),
                        ),
                      )),
                  Container(
                      margin: EdgeInsets.fromLTRB(5, 0, 0, 0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return ManajemenTugas();
                          }));
                        },
                        child: Padding(
                          padding: EdgeInsets.all(7),
                          child: FaIcon(
                            FontAwesomeIcons.trash,
                            color: Colors.red[400],
                            size: 18,
                          ),
                        ),
                      )),
                ]),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
            )
          ],
        ),
      ),
    );
  }
}
