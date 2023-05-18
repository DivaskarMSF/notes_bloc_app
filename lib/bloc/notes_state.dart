part of 'notes_bloc.dart';


 class NotesState {

  final List<NoteModel> noteModelListObj;
  const NotesState({required this.noteModelListObj});
}

class NotesInitial extends NotesState {


NotesInitial(): super(noteModelListObj: [NoteModel(note: 'Initial value')]);

  //ListNotesInitial({this.listNoteModelObj = const <NoteModel>[] });
}

// class NotesSaveState extends ListNotesState {

  

// }
