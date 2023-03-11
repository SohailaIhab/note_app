import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app1/cubits/create_note/create_note_cubit.dart';
import 'custom_app_bar.dart';
import 'notes_listview.dart';

class NotesViewsBody extends StatefulWidget {
  const NotesViewsBody({super.key});

  @override
  State<NotesViewsBody> createState() => _NotesViewsBodyState();
}

class _NotesViewsBodyState extends State<NotesViewsBody> {
  @override
  void initState(){
    super.initState();
    BlocProvider.of<CreationCubits>(context).fetchState();
  }

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
          height: 20,
        ),
       Expanded(child: NotesListView(),) 
      ],), );
  }
}
