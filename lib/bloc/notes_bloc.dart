import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import '../models/note_model.dart';

part 'notes_event.dart';
part 'notes_state.dart';



class NotesBloc extends Bloc<NotesEvent, NotesState> {

  NotesBloc() : super(NotesInitial()) {

    on<SaveEvent>((event, emit) {
      
      state.noteModelListObj.add(event.noteModel);
      
      var notesState = NotesState(noteModelListObj: state.noteModelListObj);
      emit(notesState);
    });

    on<DeleteEvent>((event, emit) {
      
        state.noteModelListObj.removeWhere((element) => (element.id == event.noteModel.id));
        var notesState = NotesState(noteModelListObj: state.noteModelListObj);
        emit(notesState);

    });
    
  }
}
