import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/button.dart';
import '../components/text_field.dart';

class RegisterPage extends StatefulWidget {
  final Function()? onTap;
  const RegisterPage({super.key,required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage > {
  final emailTextController = TextEditingController();
  final passwordTextController = TextEditingController();
  final usernameTextController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final usernameController = TextEditingController();
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
                    "Register",
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF45882D),
                    ),
                  ),
                ),
                const SizedBox(height: 25),

                MyTextField(
                  controller: usernameController,
                  hintText: 'Username',
                  obscureText: false,
                  keyboardType: TextInputType.name,
                  prefixIcon: Icons.supervised_user_circle_sharp,
                ),
                const SizedBox(height: 10),
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
                  prefixIcon: Icons.password,
                ),
                const SizedBox(height: 10),
                MyTextField(
                  controller:confirmPasswordController,
                  hintText: 'Confirm password',
                  obscureText: true,
                  prefixIcon: Icons.password,
                ),
                const SizedBox(height: 25),
                MyButton(
                  onTap: () {},
                  text: 'Sign In',
                ),
                const SizedBox(height: 25),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an account? ",
                      style:
                      GoogleFonts.poppins(
                        color: Colors.grey[700],
                      ),
                    ),
                    const SizedBox(width: 4),
                    GestureDetector(
                      onTap: widget.onTap,
                      child: Text("Sign In", style:
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