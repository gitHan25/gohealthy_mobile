import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyButton extends StatelessWidget {
  final Function()? onTap;
  final String text;


  const MyButton({
    super.key,
    required this.onTap,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.all(25),
      decoration:  BoxDecoration(
          color: Color(0xFF45C142),
        borderRadius: BorderRadius.circular(8),

      ),
      child: Center(
          child: Text(
            text,
            style: GoogleFonts.poppins(
              color:Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
            ),
      ),
    );
  }
}
