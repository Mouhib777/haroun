import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    //screen height l mawjoud fi figma = 722
    // screen width l mawjoud f figma = 352
    double screenHeight = MediaQuery.of(context)
        .size
        .height; // script edheya ye5ou height li ma7loul feha app
    double screenWidth = MediaQuery.of(context)
        .size
        .width; // script edheya ye5ou width li ma7loul feha app
    return SafeArea(
      // safearea trod partie l feha notification bar (statut bar) maadesh tet7seb fil khidma
      child: Scaffold(
        backgroundColor: Color(0XFF28243D),
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: screenHeight * 0.032,
              ), //khater hasb design logo b3id al top 23.2 w a7na aana screen height 722 donc 23.2/722= 0.032
              Image.asset("assets/Group.png"),

              SizedBox(
                height: screenHeight * 0.097,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome!",
                    style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: screenHeight * 0.01,
                  ),
                  Container(
                    height: screenHeight * 0.062,
                    width: screenWidth * 0.778,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color.fromRGBO(145, 85, 253, 0.5),
                          Color.fromRGBO(197, 165, 254, 0.5)
                        ],
                      ),
                    ),
                    child: Center(
                      child: TextField(
                        style: GoogleFonts.roboto(),
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Email",
                            hintStyle: GoogleFonts.roboto(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: 15),
                            prefixIcon: Icon(
                              Icons.email_outlined,
                              color: Colors.white,
                            )),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.04,
                  ),
                  Container(
                    height: screenHeight * 0.062,
                    width: screenWidth * 0.778,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color.fromRGBO(145, 85, 253, 0.5),
                          Color.fromRGBO(197, 165, 254, 0.5)
                        ],
                      ),
                    ),
                    child: Center(
                      child: TextField(
                        style: GoogleFonts.roboto(),
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Password",
                            hintStyle: GoogleFonts.roboto(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: 15),
                            prefixIcon: Icon(
                              Icons.lock_outline,
                              color: Colors.white,
                            )),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: screenHeight * 0.04,
              ),
              Row(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Checkbox(
                        value: isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked = value!;
                          });
                        },
                      ),
                      Text(
                        'Remember\nPassword',
                        style: GoogleFonts.roboto(color: Colors.white, 
                        fontSize: 13 , 
                        fontWeight: FontWeight.w400
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
