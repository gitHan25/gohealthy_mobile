import 'package:flutter/material.dart';
import 'package:gh_mobile/components/button.dart';
import 'package:gh_mobile/components/text_field.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget{
  final Function()? onTap;
  const LoginPage({super.key,required this.onTap});

      @override
      State<LoginPage> createState()=> _LoginPageState();
      
    }

class _LoginPageState extends State<LoginPage> {
      final emailTextController = TextEditingController();
      final passwordTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build


    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/image/logo.png',
                  width: 150,
                  height: 50,

                ),
                SizedBox(height: 50),
                Align(
                  alignment: Alignment.centerLeft,
                child: Text(
                  "Login",
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF45882D),
                  ),
                  ),
                ),
                const SizedBox(height: 25),

                MyTextField(
                    controller: emailTextController,
                    hintText: 'Email',
                    obscureText: false,
                    keyboardType: TextInputType.emailAddress,
                  prefixIcon: Icons.email,
                ),
                const SizedBox(height: 10),
                MyTextField(
                  controller: passwordTextController,
                  hintText: 'Password',
                  obscureText: true,
                  keyboardType:TextInputType.visiblePassword ,
                  prefixIcon: Icons.password,
                ),
                const SizedBox(height: 25),
                MyButton(
                  onTap: (){},
                  text: 'Sign In',
                ),
                const SizedBox(height: 25),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("New here? ",
                      style:
                      GoogleFonts.poppins(
                        color: Colors.grey[700],
                      ),
                    ),
                    const SizedBox(width: 4),
                    GestureDetector(
                      onTap: widget.onTap,
                      child: Text("Register", style:
                      GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                      
                      )),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}