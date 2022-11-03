import 'package:ecommerc/shared/components/component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';

import '../register/register_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Image.asset('assets/images/upLogin.png'),
              Column(
                children: [
                  const SizedBox(
                    height: 90,
                  ),
                  Stack(
                    alignment: const Alignment(2.5, -2.3),
                    children: [
                      SvgPicture.asset(
                        'assets/images/logo.svg',
                        color: HexColor('F3603F'),
                      ),
                      SvgPicture.asset('assets/images/logo2.svg',
                          color: HexColor('F3603F')),
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'Login',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Enter your emails and password',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: HexColor('7C7C7C')),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            decoration: const BoxDecoration(color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                onTap: () {},
                controller: TextEditingController(),
                decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: HexColor('E2E2E2'))),
                    prefixIcon: const Icon(Icons.email)),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            decoration: const BoxDecoration(color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                obscureText: true,
                onTap: () {},
                controller: TextEditingController(),
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: HexColor('E2E2E2'))),
                  prefixIcon: const Icon(Icons.lock),
                  suffixIcon: const Icon(Icons.visibility_off_outlined),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                    onPressed: () {
                    },
                    child: Text(
                      'Forgot Password ?',
                      style: TextStyle(fontSize: 16, color: HexColor('181725')),
                    )),
              ],
            ),
          ),
          // SizedBox(height:9 ,),
          Stack(
            children: [
              Image.asset('assets/images/upLogin.png'),
              Column(
                children: [
                  defualtButton(
                      context: context,
                      name: 'Log in',
                      onPressed: () {},
                      color: Colors.white),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don’t have an account?',
                        style:
                            TextStyle(fontSize: 16, color: HexColor('181725')),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const RegisterScreen()));

                          },
                          child: Text(
                            'Signup',
                            style: TextStyle(
                                fontSize: 16, color: HexColor('53B175')),
                          )),
                    ],
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
