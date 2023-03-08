import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:note_app1/views/widgets/add_note_button.dart';

import 'form_field.dart';
class AddNote extends StatelessWidget {
  const AddNote({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 16),
    // child: SingleChildScrollView(
        child: AddingNoteForm(),
 //   ),
    );
  }
}

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


  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children:  [
         const SizedBox(
            height: 26,
          ),
          CustomFormField(hint: "Title",
          onSave: (value){
            tit=value;
          },),
         const SizedBox(
            height: 16,
          ),
           CustomFormField(hint:"Description", 
           maxLs:5,
           onSave: (value){
            subTit=value;
           },),
        const  SizedBox(height: 40,),
          AddNoteButton(
            onTap: (){
              if(formKey.currentState!.validate()){
               formKey.currentState!.save();
              }
            },
          ),
        ],
      ),
    );
  }
}

