import 'package:flutter/material.dart';
import 'package:note_app1/models/note_model.dart';
import 'package:note_app1/views/widgets/add_note_button.dart';
import 'package:intl/intl.dart';
import 'form_field.dart';
import 'package:note_app1/cubits/add_note/add_note_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddingNoteForm extends StatefulWidget {
  const AddingNoteForm({
    super.key,
  });
  @override
  State<AddingNoteForm> createState() => _AddingNoteFormState();
}

class _AddingNoteFormState extends State<AddingNoteForm> {

  final GlobalKey<FormState> formKey=GlobalKey(); 

  String? tit,
  subTit;
  
  String dateStr = DateFormat('yyyy-MM-dd').format(DateTime.now());


  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children:  [
         const SizedBox(
            height: 26,
          ),
          CustomFormField(
            hint: "Title",
            onSave: (value){
            tit=value;
          },),
         const SizedBox(
            height: 16,
          ),
           CustomFormField(
            hint:"Description", 
            maxLs:5,
            onSave: (value){
            subTit=value;
           },),
        const  SizedBox(height: 40,),

          AddNoteButton(
            onTap: (){
              if(formKey.currentState!.validate()){
               formKey.currentState!.save();
               var noteM=NoteModel(
                color: Colors.white.value,
                date:dateStr,
                title: tit!, 
                subTitle: subTit!,);
               BlocProvider.of<AddNotesCubit>(context).addNote(noteM);
              }
            },
          ),
        ],
      ),
    );
  }
}

