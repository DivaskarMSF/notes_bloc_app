import 'package:flutter/material.dart';
import 'package:notes_bloc_app/bloc/notes_bloc.dart';
import 'package:notes_bloc_app/models/note_model.dart';
import 'package:notes_bloc_app/screens/new_note_bottomsheet.dart';

import '../../bloc/bloc_imports.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  // void _showBottomOverlay() {

  //   showModalBottomSheet(context: context, builder: (ctx) => NewNoteBottomSheet());
  // }

  // void _onClickSave(NoteModel noteModel) {
  //   setState(() {
  //     _registeredNoteModelArrObj.add(noteModel);
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: (const Text('Notes App')),
        // actions: [
        //   // IconButton(
        //   //     onPressed: _showBottomOverlay, icon: const Icon(Icons.add)
        //   //     ),
        // ],
      ),
      body: BlocBuilder<NotesBloc, NotesState>(
        builder: (context, state) {
          return Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  showModalBottomSheet(
                      context: context, builder: (ctx) => NewNoteBottomSheet());
                },
                child: const Wrap(
                  children: [
                    // Text('Add Note'),
                    Icon(Icons.add, size: 30),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: state.noteModelListObj.length,
                    itemBuilder: (ctx, index) => Dismissible(
                          key: ValueKey(state.noteModelListObj[index]),
                          onDismissed: (direction) {
                            context.read<NotesBloc>().add(DeleteEvent(noteModel: state.noteModelListObj[index],),);
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 20, horizontal: 20),
                            child: Card(
                              child: Text(state.noteModelListObj[index].note),
                            ),
                          ),
                        )),
              ),
            ],
          );
        },
      ),
    );
  }
}
