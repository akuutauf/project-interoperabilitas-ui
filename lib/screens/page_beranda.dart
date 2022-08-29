import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_ui_interoperabilitas/screens/page_signin.dart';

class BerandaUser extends StatefulWidget {
  const BerandaUser({Key? key}) : super(key: key);

  @override
  State<BerandaUser> createState() => _BerandaUserState();
}

class _BerandaUserState extends State<BerandaUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Beranda User'),
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromRGBO(49, 54, 68, 1),
      ),
      backgroundColor: Color.fromRGBO(28, 32, 42, 1),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(30, 25, 30, 0),
                  child: Text(
                    'Selamat Datang\nKembali.',
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                // Logout icon
                Container(
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(49, 54, 68, 1),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    margin: EdgeInsets.fromLTRB(20, 25, 30, 0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return SignIn();
                        }));
                      },
                      child: Padding(
                        padding: EdgeInsets.all(9),
                        child: FaIcon(
                          FontAwesomeIcons.powerOff,
                          color: Colors.white,
                          size: 22,
                        ),
                      ),
                    )),
              ],
            ),
            Center(
              child: Container(
                margin: EdgeInsets.fromLTRB(20, 40, 20, 20),
                child: Image.asset(
                  'assets/image/3d_woman.png',
                  scale: 14,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(40, 10, 40, 25),
              child: Text(
                'Yuk mulai manajemen tugas kamu bersama kami.',
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              height: 50,
              width: 280,
              margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return BerandaUser();
                  }));
                },
                child: const Text(
                  'Manajemen Tugas',
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    onPrimary: Colors.black,
                    fixedSize: const Size(300, 100),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5))),
              ),
            ),
            Container(
              height: 50,
              width: 280,
              margin: EdgeInsets.fromLTRB(5, 0, 0, 0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return BerandaUser();
                  }));
                },
                child: const Text(
                  'Manajemen Kategori',
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 96, 95, 103),
                    onPrimary: Colors.white,
                    fixedSize: const Size(300, 100),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
