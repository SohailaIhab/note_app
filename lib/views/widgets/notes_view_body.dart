import 'package:flutter/material.dart';
import 'package:note_app1/views/widgets/note_card.dart';

import 'custom_app_bar.dart';
import 'notes_listview.dart';

class NotesViewsBody extends StatelessWidget {
  const NotesViewsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
    padding:const EdgeInsets.symmetric(horizontal: 24, ),
     child: Column(
      children: const[
        SizedBox(
          height: 30,
        ),
        CustomAppBar(),

        SizedBox(
          height: 30,
        ),
       Expanded(child: NotesListView(),) 
      ],), );
  }
}
