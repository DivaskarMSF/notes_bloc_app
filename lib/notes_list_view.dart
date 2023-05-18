import 'package:flutter/material.dart';
import 'package:notes_bloc_app/models/note_model.dart';
import 'package:notes_bloc_app/widgets/note_item_card.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key, required this.noteModelArrObj});

  final List<NoteModel> noteModelArrObj;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: noteModelArrObj.length,
        itemBuilder: (ctx, index) => Dismissible(
            key: ValueKey(noteModelArrObj[index]),
            child: NoteItemCard(noteModelArrObj[index])));
  }
}
