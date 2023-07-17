import 'package:createachannel/Screens/OutputScreen/outputScreen.dart';
import 'package:createachannel/Screens/contactus/sendemail/sendEmailScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactUsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 60,
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Text(
                  "Let’s Talk",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              ListTile(
                leading: Image.asset(
                  'assets/images/pin 1.png',
                  width: 40,
                  height: 44,
                ),
                title: Padding(
                  padding: const EdgeInsets.only(bottom: 5.0),
                  child: Text("Address:",
                      style: GoogleFonts.lato(
                        textStyle: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w800,
                            color: Colors.black),
                      )),
                ),
                subtitle: Text("1234 Street Adress City Address",
                    style: GoogleFonts.lato(
                      textStyle: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    )),
              ),
              SizedBox(
                height: 25,
              ),
              ListTile(
                leading: Image.asset(
                  'assets/images/phone.png',
                  width: 40,
                  height: 44,
                ),
                title: Text("Phone:",
                    style: GoogleFonts.lato(
                      textStyle: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w800,
                          color: Colors.black),
                    )),
                subtitle: Text("(123)456 7890",
                    style: GoogleFonts.lato(
                      textStyle: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    )),
              ),
              SizedBox(
                height: 25,
              ),
              ListTile(
                leading: Image.asset(
                  'assets/images/clock 1.png',
                  width: 40,
                  height: 44,
                ),
                title: Text("We are Open:",
                    style: GoogleFonts.lato(
                      textStyle: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w800,
                          color: Colors.black),
                    )),
                subtitle: Text(
                    "Monday : 9:00 AM - 5:30 PM \nFriday 9:00 AM - 6:00 PM \nSaturday: 11:00 AM - 5:00 PM",
                    style: GoogleFonts.lato(
                      textStyle: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    )),
              ),
              SizedBox(
                height: 25,
              ),
              ListTile(
                leading: Image.asset(
                  'assets/images/pngwing 1.png',
                  width: 40,
                  height: 44,
                ),
                title: Text("E-mail:",
                    style: GoogleFonts.lato(
                      textStyle: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w800,
                          color: Colors.black),
                    )),
                subtitle: Text(
                    "Monday : 9:00 AM - 5:30 PM \nFriday 9:00 AM - 6:00 PM \nSaturday: 11:00 AM - 5:00 PM",
                    style: GoogleFonts.lato(
                      textStyle: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    )),
              ),
              SizedBox(
                height: 25,
              ),
              // Row(
              //   crossAxisAlignment: CrossAxisAlignment.start,
              //   children: [
              //     Icon(
              //       Icons.email_outlined,
              //       size: 30,
              //     ),
              //     SizedBox(
              //       width: 10,
              //     ),
              // Column(
              //   crossAxisAlignment: CrossAxisAlignment.start,
              //   children: [
              //     Text(
              //       "E-mail:",
              //       style: TextStyle(
              //           fontSize: 25, fontWeight: FontWeight.bold),
              //     ),
              //   ],
              // )
              //   ],
              // ),
              Spacer(),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => output(),
                          ));
                    },
                    child: Text(
                      "  Back",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.indigoAccent,
                      ),
                    ),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => sendEmailScreen(),
                          ));
                    },
                    child: Container(
                      height: 45,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.indigoAccent,
                      ),
                      child: Center(
                        child: Text(
                          "Next",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
