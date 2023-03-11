import 'package:flutter/material.dart';

class CustomFormField extends StatelessWidget {
 const  CustomFormField({super.key, required  this.hint, this.maxLs=1, this.onSave});

  final String? hint;

  final int maxLs;

 final void Function(String?)? onSave;

  @override
  Widget build(BuildContext context) {
    return TextFormField(     
     maxLines: maxLs,
      cursorColor:const Color.fromARGB(255, 255, 255, 0),
      decoration: InputDecoration(
        hintText: hint,
        enabledBorder: OutlineInputBorder(
          borderSide:const BorderSide(color:Colors.white,),
          borderRadius:BorderRadius.circular(16)),
       focusedBorder: OutlineInputBorder(
        borderRadius:BorderRadius.circular(16),
        borderSide:const BorderSide(color: Color.fromARGB(255, 255, 255, 0)))
         ),
   onSaved: onSave,
      validator: (value) {
        if(value?.isEmpty ?? true){
          return "Field is Required";}
          else{
            return null;
          }
      },
       );
  }
}