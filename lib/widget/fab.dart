import 'dart:developer';

import 'package:flutter/material.dart';


class Fab extends StatelessWidget {
  const Fab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        log("Task view");
      },
      child: Material(
        borderRadius: BorderRadius.circular(15),
        elevation: 10,
        child: Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
                color: Color(0xFF45882D),
                borderRadius: BorderRadius.circular(15)),
            child: const Center(
              child: Icon(
                Icons.add,
                color: Colors.white,
              ),
            )),
      ),
    );
  }
}
