import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:note_app1/models/note_model.dart';

class NoteCard extends StatelessWidget {
  const NoteCard({super.key,required this.note});
final NoteModel note; 
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
            child: Text(note.title,
          style: GoogleFonts.ubuntu(textStyle: TextStyle(color: Colors.black),fontSize: 28),)),
         
          subtitle:Padding(
          padding:EdgeInsets.only(top: 11),
          child: Text(note.subTitle,
          style: GoogleFonts.ubuntu(
        textStyle: TextStyle(color: Colors.black.withOpacity(0.5),fontSize: 20),),)),
          trailing: IconButton(//padding:const EdgeInsets.only(top:10),
            color: Colors.black,
            icon:const Icon( Icons.delete),iconSize: 30, 
            onPressed: () {note.delete();  },),
        )
    ,Padding(
     padding: const EdgeInsets.only(right: 16),
      child: Text(note.date,
     style: GoogleFonts.ubuntu(
     textStyle: TextStyle(color: Colors.black.withOpacity(0.5)),))) ]),
    );
  }
}