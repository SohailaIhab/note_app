import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app1/cubits/create_note/create_note_cubit.dart';
import 'package:note_app1/models/note_model.dart';
import 'views/widgets/notes_view.dart';

void main()async {
  
  await Hive.initFlutter(); 
   Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>("notes");

  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return 
       BlocProvider(create:(context) => CreationCubits(),
         child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData.dark(),
          home:const NotesView(),
             ),
       );
    
  }
}
