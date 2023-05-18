import 'package:uuid/uuid.dart';

const uuid = Uuid();

class NoteModel {

NoteModel({required this.note}) : id = uuid.v4();

  final String id;
  final String note;
}