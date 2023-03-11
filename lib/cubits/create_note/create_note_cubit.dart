import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:note_app1/models/note_model.dart';

part 'create_note_states.dart';
class CreationCubits extends Cubit<CreationStates>{
  CreationCubits():super(Creation());
  
  List<NoteModel>?notes;
  fetchState(){

     var noteBox = Hive.box<NoteModel>("notes");     
     notes=noteBox.values.toList();
     emit(CreationSuccess());
  }
}