import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class AddNoteButton extends StatelessWidget {
   AddNoteButton({super.key, this.onTap});
final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 55,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Color.fromARGB(255, 255, 255, 0)
        ),
        child: Center(
          child: Text("Save",
          style: GoogleFonts.ubuntu(
         textStyle:TextStyle(color: Colors.black,fontSize: 24,))),
        ),
      ),
    );
  }
}