import 'package:flutter/material.dart';
import 'package:notes_bloc_app/models/note_model.dart';

class NoteItemCard extends StatelessWidget {
  const NoteItemCard(this.noteModelObj, {super.key});

  final NoteModel noteModelObj;

  @override
  Widget build(BuildContext context) {
    
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Card(
        child: Text(noteModelObj.note),
      ),
    );
  }
}
