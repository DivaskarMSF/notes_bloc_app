import 'package:flutter/material.dart';
import 'package:notes_bloc_app/bloc/bloc_imports.dart';
import 'package:notes_bloc_app/models/note_model.dart';

class NewNoteBottomSheet extends StatelessWidget {

 NewNoteBottomSheet({super.key});

  final _titleController = TextEditingController();

  //  void _onSubmitData() {
  //    var noteModelObj = NoteModel(note: _titleController.text);
  //     widget.onClickSave(noteModelObj);
  //     Navigator.pop(context);
  // }

 
  @override
  Widget build(BuildContext context) {
    
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            //onChanged: _saveTitleInput,
            controller: _titleController,
            maxLength: 50,
            decoration: const InputDecoration(
              label: Text('Note'),
            ),
          ),
          Row(
            children: [
              ElevatedButton(
                  onPressed: () {
                      context.read<NotesBloc>().add(
                        SaveEvent(noteModel: NoteModel(note: _titleController.text),),
                    );
                    Navigator.pop(context);
                  }, 
                 
                  child: const Text('Save Note')),
            ],
          ),
        ],
      ),
    );
  }
}
