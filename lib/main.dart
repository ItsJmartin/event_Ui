import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: const ScreenOne(),
    );
  }
}

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe2e2e4),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(16.1),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Meetus",
                    style: GoogleFonts.playfair(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.w900),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.all(
                          Radius.circular(50),
                        )),
                    padding: const EdgeInsets.all(6),
                    child: Row(
                      children: [
                        SizedBox(
                          child: IconButton(
                            icon: const Icon(
                              Icons.notifications_on_outlined,
                              size: 27,
                            ),
                            onPressed: () {
                              // Handle notification button press
                            },
                          ),
                        ),

                        const SizedBox(
                            width: 13), //gap between icon and profile

                        Container(
                          width: 50,
                          height: 50,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage("assets/iconpng/man.png"),
                                fit: BoxFit.fill),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  Text(
                    "Hay, Shofran",
                    style: GoogleFonts.nunito(
                        color: const Color(0xff5b5b5b),
                        fontSize: 30,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              Row(children: [
                RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                          text: 'You have ',
                          style: GoogleFonts.nunito(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.w600,
                          )),
                      TextSpan(
                          text: '3',
                          style: GoogleFonts.nunito(
                            color: const Color(0xff2986cc),
                            fontSize: 30,
                            fontWeight: FontWeight.w600,
                          )),
                      TextSpan(
                          text: ' upcoming',
                          style: GoogleFonts.nunito(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.w600,
                          )),
                    ],
                  ),
                ),
              ]),
              Row(
                children: [
                  Text(
                    "events today",
                    style: GoogleFonts.nunito(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(width: 10),
                  const Icon(
                    Icons.arrow_forward,
                    color: Colors.black,
                    size: 30,
                  ),
                ],
              ),
              const SizedBox(height: 15), // for gap between text and cards.

              // list view cards wrapped with sized box
              SizedBox(
                height:
                    330, // this height taken as the "Sized box" Widget height so "List View" Widget also the same size
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    // card 1
                    Container(
                      padding: const EdgeInsets.all(15),
                      width: 330,
                      decoration: const BoxDecoration(
                          color: Color(0xff3868dd),
                          borderRadius: BorderRadius.all(
                            Radius.circular(40),
                          )),

                      //card inner detailes
                      child: Column(
                        //column for vertical alignment of the container
                        children: <Widget>[
                          //row for the horizontal alignment of the container
                          Row(
                            children: <Widget>[
                              // icon with text light background container
                              Container(
                                padding: const EdgeInsets.all(3),
                                decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50)),
                                  color: Color(0xfffffefe),
                                ),

                                // container with image file, text and their properties
                                child: Row(
                                  children: <Widget>[
                                    //image file
                                    Container(
                                      // Container used for giving circular paddin for logo.
                                      padding: const EdgeInsets.all(5),
                                      decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color(0xff403b34)),
                                      child: Container(
                                        height: 20,
                                        width: 20,
                                        decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            image: DecorationImage(
                                                // WEFAWSGVArsVAsRVsrDVA
                                                // eFeFeFWESDVWEDFWEDV
                                                // effEfwEfwEfwefwefwefwEFwe
                                                image: AssetImage(
                                                    "assets/iconpng/illustrator.png"),
                                                fit: BoxFit.fill)),
                                      ),
                                    ),

                                    // gap between icon and text
                                    const SizedBox(
                                      width: 5,
                                    ),

                                    // text
                                    SizedBox(
                                      child: Text("Illustrator Community",
                                          style: GoogleFonts.nunito(
                                            color: Colors.black,
                                          )),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),

                          Container(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              children: <Widget>[
                                Row(
                                  children: [
                                    SizedBox(
                                      child: Text("3D Design",
                                          style: GoogleFonts.nunito(
                                              color: Colors.white,
                                              fontSize: 35,
                                              fontWeight: FontWeight.w500)),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    SizedBox(
                                      child: Text("bootcamp",
                                          style: GoogleFonts.nunito(
                                              color: Colors.white,
                                              fontSize: 35,
                                              fontWeight: FontWeight.w500)),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),

                    const SizedBox(width: 15), // gap between cards

                    // card 2
                    Container(
                      padding: const EdgeInsets.all(15),
                      width: 330,
                      decoration: const BoxDecoration(
                          color: Color(0xff3868dd),
                          borderRadius: BorderRadius.all(
                            Radius.circular(40),
                          )),

                      //card inner detailes
                      child: Column(
                        //column for vertical alignment of the container
                        children: <Widget>[
                          //row for the horizontal alignment of the container
                          Row(
                            children: <Widget>[
                              // icon with text light background container
                              Container(
                                padding: const EdgeInsets.all(3),
                                decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50)),
                                  color: Color(0xfffffefe),
                                ),

                                // container with image file, text and their properties
                                child: Row(
                                  children: <Widget>[
                                    //image file
                                    Container(
                                      // Container used for giving circular paddin for logo.
                                      padding: const EdgeInsets.all(5),
                                      decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color(0xff403b34)),
                                      child: Container(
                                        height: 20,
                                        width: 20,
                                        decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/iconpng/figma.png"),
                                                fit: BoxFit.fill)),
                                      ),
                                    ),

                                    // gap between icon and text
                                    const SizedBox(
                                      width: 5,
                                    ),

                                    // text
                                    SizedBox(
                                      child: Text("Figma Community",
                                          style: GoogleFonts.nunito(
                                            color: Colors.black,
                                          )),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
