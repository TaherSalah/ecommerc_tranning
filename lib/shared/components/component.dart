
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';
import '../../moduels/login/login_screen.dart';
import 'constance.dart';




Widget splashBody ()=>Container(
    width: double.infinity,
    height: double.infinity,
    decoration: BoxDecoration(
      color: HexColor('#53B175'),
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          alignment: const Alignment(2.7, -2.6),
          children: [
            SvgPicture.asset(
              logoPartOne,
              color: Colors.white,
            ),
            SvgPicture.asset(
              logoPartTow,
              color: Colors.white,
            ),
          ],
        ),
        const SizedBox(
          width: 20,
        ),

        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'nectar',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.0
              ),
            ),
            Text(
              'online groceriet',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight:FontWeight.w400,
                  letterSpacing: 2.8

              ),
            ),
          ],
        ),
      ],
    ));
Widget onBoardingScreen(BuildContext context)=>Stack(
  alignment: Alignment.bottomCenter,
  children: [
    Image.asset('assets/images/onboarding.png'),
    Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Stack(
          alignment: const Alignment(2.5, -2.3),
          children: [
            SvgPicture.asset('assets/images/logo.svg'),
            SvgPicture.asset('assets/images/logo2.svg'),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          'Welcome',
          style: TextStyle(
              fontSize: 45,
              fontWeight: FontWeight.bold,
              color: Colors.white),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Text(
            'to our store',
            style: TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
        ),

        Text(
          'get our groceries in as fast as one hour',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700,color:HexColor('FCFCFC')),
        ),
        const SizedBox(height: 25,),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Container(
              height: 67,
              width: 353,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(19),
                color: HexColor('53B175'),
              ),
              child: MaterialButton(
                onPressed: () {Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const LoginScreen()));},
                child: const Text(
                  'Get Started',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600
                  ),
                ),
              )),
        ),
        const SizedBox(height: 80,),
      ],

    ),
  ],
);


Widget defualtButton(
{
  required BuildContext context,
  required String name,
  Color? color ,
required VoidCallback onPressed
}
    )=>Padding(
  padding: const EdgeInsets.symmetric(horizontal: 25),
  child: Container(
      height: 67,
      width: 353,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(19),
        color: HexColor('53B175'),
      ),
      child: MaterialButton(
        onPressed: onPressed,
        child:  Text(
          name,
          style: TextStyle(
              color: color,
              fontSize: 18.0,
              fontWeight: FontWeight.w600
          ),
        ),
      )),
);
Widget defualtFormField()=>Container(
  decoration: BoxDecoration(
      color: Colors.white
  ),
  child:Padding(
    padding: const EdgeInsets.all(10.0),
    child: TextFormField(
      onTap: (){},
      controller: TextEditingController(),
      decoration: InputDecoration(
          labelText: 'Email',
          border:OutlineInputBorder(borderSide: BorderSide(color: HexColor('E2E2E2'))),
          prefixIcon: Icon(Icons.email)
      ),
    ),
  ) ,
);
