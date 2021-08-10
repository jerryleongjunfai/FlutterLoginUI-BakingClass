
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_ui/constants.dart';
import 'package:flutter_login_ui/signin_screen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Login UI',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme: TextTheme(
          display1: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          button: TextStyle(
            color: kPrimaryColor,
          ),
          headline: TextStyle(
            color: Colors.white, fontWeight: FontWeight.normal
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white.withOpacity(.2),
            ),
          ),
        ),
      ),
      home: WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/perosn.jpeg"),
                fit: BoxFit.cover,
              ),
            ),
            ),
          ),
          Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    textAlign: TextAlign.center,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "BAKING LESSONS\n",
                            style: Theme.of(context)
                                .textTheme
                                .display1!
                          ),
                          TextSpan(
                            text: "MASTER THE ART OF BAKING",
                            style: Theme.of(context).textTheme.headline,
                          )
                        ],
                      ),
                  ),
                  FittedBox(
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(
                            context, MaterialPageRoute(
                          builder: (context){return SignInScreen();},));
                      },
                      child: Container(
                        margin: EdgeInsets.only(bottom: 25),
                        padding: EdgeInsets.symmetric(horizontal: 26,vertical: 16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: kPrimaryColor,
                        ),
                        child: Row(
                          children: [
                            Text("START LEARNING",
                              style:
                                Theme.of(context).textTheme.button!.copyWith(color: Colors.black,),
                            ),
                            SizedBox(width: 10,),
                            Icon(
                                Icons.arrow_forward,
                              color: Colors.black,
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              )
          ),
        ],
      ),
    );
  }
}






















