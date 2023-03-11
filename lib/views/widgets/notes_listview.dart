import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app1/cubits/create_note/create_note_cubit.dart';
import 'package:note_app1/models/note_model.dart';
import 'package:note_app1/views/widgets/note_card.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreationCubits,CreationStates>(
      builder: (context,state){

      List<NoteModel>notes =  BlocProvider.of<CreationCubits>(context).notes ??[];
      
      return ListView.builder(
        itemCount: notes.length,
        itemBuilder: (context,index){
        return  Padding(
          padding: const EdgeInsets.symmetric(vertical: 11),
          child: NoteCard(note: notes[index],),
        );
      });
      },
    );
  }
}