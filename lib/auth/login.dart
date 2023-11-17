import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    //screen height l mawjoud fi figma = 722 
    // screen width l mawjoud f figma = 352
    double screenHeight = MediaQuery.of(context).size.height;// script edheya ye5ou height li ma7loul feha app
    double screenWidth = MediaQuery.of(context).size.width;// script edheya ye5ou width li ma7loul feha app
    return SafeArea( // safearea trod partie l feha notification bar (statut bar) maadesh tet7seb fil khidma
      child: Scaffold(
        backgroundColor: Color(0XFF28243D),
        body: Center(
          child: Column(
            children: [
              SizedBox(height: screenHeight*0.032,),//khater hasb design logo b3id al top 23.2 w a7na aana screen height 722 donc 23.2/722= 0.032
              Image.asset("assets/Group.png"), 
           
              SizedBox(height: screenHeight*0.097,),
              Text("Welcome!")
            ],
          ),
        ),
      ),
    );
  }
}