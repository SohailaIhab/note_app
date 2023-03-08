import 'package:flutter/material.dart';

import 'package:note_app1/views/widgets/note_card.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context,index){
      return const Padding(
        padding: EdgeInsets.symmetric(vertical: 11),
        child: NoteCard(),
      );
    });
  }
}