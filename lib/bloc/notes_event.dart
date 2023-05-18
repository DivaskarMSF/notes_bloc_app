part of 'notes_bloc.dart';

@immutable
abstract class NotesEvent {

}


class SaveEvent extends NotesEvent {

  final NoteModel noteModel;
  SaveEvent({required this.noteModel});
  
}

class DeleteEvent extends NotesEvent {
   final NoteModel noteModel;
   DeleteEvent({required this.noteModel});
}