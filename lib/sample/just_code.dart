// Container(
//         margin: EdgeInsets.all(10),
//         height: MediaQuery.of(context).size.height * 1,
//         width: MediaQuery.of(context).size.width * 1,
//         decoration: BoxDecoration(),
//         child: Center(
//             child: Column(
//           children: [
//             Container(
//                 color: Colors.green,
//                 padding: EdgeInsets.all(70),
//                 margin: EdgeInsets.fromLTRB(20, 10, 20, 20),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     Text(
//                       'Haloo kamu',
//                       style: TextStyle(color: whiteText, fontSize: 20),
//                       textAlign: TextAlign.center,
//                     ),
//                     Text(
//                       'Hi There',
//                       style: TextStyle(color: whiteText, fontSize: 25),
//                     ),
//                   ],
//                 )),
//             Container(
//               height: MediaQuery.of(context).size.height * 0.58,
//               width: MediaQuery.of(context).size.width * 0.8,
//               child: Card(
//                 elevation: 2,
//                 child: Form(
//                   key: _formKey,
//                   child: Column(
//                     // mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Container(
//                         margin: EdgeInsets.only(top: 30),
//                         child: Text(
//                           "Halaman Login",
//                           style: TextStyle(
//                               fontWeight: FontWeight.bold, fontSize: 20),
//                         ),
//                       ),
//                       Container(
//                         margin: EdgeInsets.only(top: 15),
//                         child: Container(
//                           margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
//                           child: TextFormField(
//                             // decoration
//                             decoration: InputDecoration(
//                               // icon: Icon(Icons.email),
//                               contentPadding: EdgeInsets.all(5),
//                               label: Text("E-Mail"),
//                               hintText: "user@mail.com",
//                               prefixIcon: Icon(Icons.email),
//                               prefixStyle: TextStyle(
//                                   color: Colors.blue,
//                                   fontWeight: FontWeight.w500),
//                               border: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(5)),
//                               filled: true,
//                               fillColor: Colors.blue[50],
//                             ),
//                             validator: (value) {
//                               if (value!.isEmpty) {
//                                 return "Field is Empty";
//                               } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+')
//                                   .hasMatch(value)) {
//                                 return "Invalid Email";
//                               }
//                               return null;
//                             },
//                           ),
//                         ),
//                       ),
//                       Container(
//                         margin: EdgeInsets.only(top: 20),
//                         child: Container(
//                           margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
//                           child: TextFormField(
//                             // decoration
//                             decoration: InputDecoration(
//                               // icon: Icon(Icons.email),
//                               contentPadding: EdgeInsets.all(5),
//                               label: Text("Password"),
//                               hintText: "-----",
//                               prefixIcon: Icon(Icons.lock),
//                               prefixStyle: TextStyle(
//                                   color: Colors.transparent,
//                                   fontWeight: FontWeight.w500),
//                               border: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(5)),
//                               suffixIcon: Container(
//                                   padding: EdgeInsets.only(right: 10),
//                                   child: Icon(Icons.remove_red_eye_outlined)),
//                               filled: true,
//                               fillColor: Colors.blue[50],
//                             ),
//                             validator: (String? value) {
//                               if (value!.isEmpty) {
//                                 return "Field is Empty";
//                               } else if (value.length < 8) {
//                                 return "Password less than 8 Characters";
//                               }
//                               return null;
//                             },
//                             obscureText: true,
//                             onChanged: (data) {
//                               setState(() {});
//                             },
//                           ),
//                         ),
//                       ),
//                       Container(
//                         margin: EdgeInsets.only(top: 5, left: 20, right: 20),
//                         child: Row(
//                             mainAxisAlignment: MainAxisAlignment.end,
//                             children: []),
//                       ),
//                       Container(
//                         height: 35,
//                         margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
//                         child: RaisedButton(
//                             color: Colors.blue,
//                             hoverColor: Colors.blue[400],
//                             child: Center(
//                                 child: Text(
//                               "LOGIN",
//                               style: TextStyle(
//                                   color: Colors.white,
//                                   fontWeight: FontWeight.bold),
//                             )),
//                             onPressed: () {
//                               if (_formKey.currentState!.validate()) ;
//                             }),
//                       ),
//                       Container(
//                         margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
//                         child: Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Text(
//                                 "Dont have an account? ",
//                                 style: TextStyle(fontSize: 10),
//                               ),
//                               GestureDetector(
//                                 onTap: () {
//                                   Navigator.push(context, MaterialPageRoute(
//                                     builder: (context) {
//                                       return SignIn();
//                                     },
//                                   ));
//                                 },
//                                 child: Text(
//                                   "Sign Up",
//                                   style: TextStyle(
//                                       fontSize: 10,
//                                       fontWeight: FontWeight.bold,
//                                       color: Colors.blue),
//                                 ),
//                               )
//                             ]),
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         )),
//       ),