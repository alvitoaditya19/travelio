import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travelio/pages/home.dart';
import 'package:travelio/shared/theme.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/langit.png"),
                    fit: BoxFit.cover))),
        SafeArea(
          child: Center(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 30),
                  child: Text(
                    'Let’s Discover The Most \nWonderful Place \nIn The World',
                    style: bigTitleTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(top: 8),
                    child: Text(
                      'Find your Favorite Place for\n a Short Break from Boredom Acticity',
                      style: subTitleTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: semiBold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.only(
                      bottom: 50,
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 44,
                      vertical: 16,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Color(0xffEBF1F3),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xff999999),
                          spreadRadius: 1,
                          blurRadius: 18,
                          offset: Offset(2, 5), // changes position of shadow
                        )
                      ],
                    ),
                    child: Text(
                      'Get Started',
                      style: GoogleFonts.poppins(
                        color: black,
                        fontSize: 20,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ]),
    );
  }
}
