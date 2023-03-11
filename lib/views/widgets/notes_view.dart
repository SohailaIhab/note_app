import 'package:flutter/material.dart';
import 'package:note_app1/views/widgets/add_note.dart';
import 'package:note_app1/views/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return
       Scaffold(
        floatingActionButton: FloatingActionButton(
         onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16)),
            context: context,
             builder: (context){
            return const AddNote();
          });
         },
         backgroundColor:Colors.black,
         child: const Icon(
          Icons.add,
          color: Colors.white,
          size: 30,)),
    
        body:const NotesViewsBody(),
     
    );
  }
}
