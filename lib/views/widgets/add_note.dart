import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:note_app1/views/widgets/add_note_button.dart';

class AddNote extends StatelessWidget {
  const AddNote({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
    // child: SingleChildScrollView(
        child: Column(
          children:  [
            SizedBox(
              height: 26,
            ),
            TextField(cursorColor: Color.fromARGB(255, 255, 255, 0),
              decoration: InputDecoration(
                hintText: "Title",
                enabledBorder: OutlineInputBorder(
                  borderSide:BorderSide(color:Colors.white,),
                  borderRadius:BorderRadius.circular(16)),
               focusedBorder: OutlineInputBorder(
                borderRadius:BorderRadius.circular(16),
                borderSide: BorderSide(color: Color.fromARGB(255, 255, 255, 0))) ),
            ),SizedBox(
              height: 16,
            ),
             TextField(cursorColor: Color.fromARGB(255, 255, 255, 0),
             maxLines: 5,
              decoration: InputDecoration(
               // label:Text("Description",style: TextStyle(color: Color.fromARGB(255, 255, 255, 0)),) ,
               hintText: "Description",
                 enabledBorder: OutlineInputBorder(
                  borderSide:BorderSide(color:Colors.white,),
                  borderRadius:BorderRadius.circular(16)),
               focusedBorder: OutlineInputBorder(
                borderRadius:BorderRadius.circular(16),
                borderSide: BorderSide(color: Color.fromARGB(255, 255, 255, 0))) ),
            ),
            SizedBox(height: 40,),
            AddNoteButton(),
          ],
        ),
 //   ),
    );
  }
}