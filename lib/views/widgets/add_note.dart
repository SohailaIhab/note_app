import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app1/cubits/add_note/add_note_cubit.dart';
import 'package:note_app1/cubits/create_note/create_note_cubit.dart';

import 'note_form.dart';

class AddNote extends StatelessWidget {
  const AddNote({super.key});

  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
     create: (context)=>AddNotesCubit(),
      
      
      // child: SingleChildScrollView(
          child: BlocConsumer<AddNotesCubit,AddNotesStates>(
            builder: ( context, state) {  return
              Padding(padding: EdgeInsets.only(left:16,right:16,
              bottom: MediaQuery.of(context).viewInsets.bottom),
              child:const AddingNoteForm(),);    
           },

          listener: ( context,  state) { 
           /* if (state is Failure){
              print("fail");
            }*/
    if(state is Success){ 
      Navigator.pop(context);
      BlocProvider.of<CreationCubits>(context).fetchState();
         }
           },
          ),
     //   ),
      
    );
  }
}
