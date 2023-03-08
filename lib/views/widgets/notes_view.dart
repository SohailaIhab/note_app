import 'package:flutter/material.dart';
import 'package:note_app1/views/widgets/add_note.dart';

import 'package:note_app1/views/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton: FloatingActionButton(
       onPressed: () {
        showModalBottomSheet(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16)),
          context: context,
           builder: (context){
          return AddNote();
        });
       },
       child:Icon(
        Icons.add,
        color: Colors.white,
        size: 30,),
       backgroundColor:Colors.black),

      body: NotesViewsBody(),
    );
  }
}
