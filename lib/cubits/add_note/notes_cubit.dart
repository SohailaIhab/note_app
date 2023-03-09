import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
//import 'package:note_app1/cubits/notes_states.dart';
part 'notes_states.dart';


class NotesCubit extends Cubit<AddNotesStates>{
  NotesCubit():super(Loading());
}