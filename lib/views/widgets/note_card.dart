import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class NoteCard extends StatelessWidget {
  const NoteCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.only(bottom:16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        
        children: [
        ListTile(
          title:Padding(
            padding: EdgeInsets.only(top:16),
            child: Text("Flutter",
          style: GoogleFonts.ubuntu(textStyle: TextStyle(color: Colors.black),fontSize: 28),)),
         
          subtitle:Padding(
          padding:EdgeInsets.only(top: 11),
          child: Text("Finish Note APP",
          style: GoogleFonts.ubuntu(
        textStyle: TextStyle(color: Colors.black.withOpacity(0.5),fontSize: 20),),)),
          trailing: IconButton(//padding:const EdgeInsets.only(top:10),
            color: Colors.black,
            icon:const Icon( Icons.delete),iconSize: 30, 
            onPressed: () {  },),
        )
    ,Padding(
     padding: const EdgeInsets.only(right: 16),
      child: Text("Month....Day",
     style: GoogleFonts.ubuntu(
     textStyle: TextStyle(color: Colors.black.withOpacity(0.5)),))) ]),
    );
  }
}