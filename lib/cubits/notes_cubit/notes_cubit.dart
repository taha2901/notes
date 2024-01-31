import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes/constants.dart';
import 'package:notes/models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());


  fetchAllNotes() async{
      var noteBox = Hive.box<NoteModel>(kNotesBox);
     List<NoteModel> notes =  noteBox.values.toList();
      emit(NotesSuccess(notes));
  }
}
