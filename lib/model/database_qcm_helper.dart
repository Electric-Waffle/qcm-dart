import 'dart:ffi';

import 'database_helper.dart';
import '../model/chapter.dart';
import '../model/answer.dart';
import '../model/question.dart';

class DatabaseQcmHelper extends DatabaseHelper
{

  List<Chapter> getChapters() {
    final result = db.select('SELECT * FROM chapter');
    return result
        .map((row) => Chapter(
              row['id'] as int,
              row['title'] as String,
            ))
        .toList();
  }

  List<Question> getQuestions(Chapter chapter){
    final result = db.select('SELECT * FROM question where chapter_id = ?', [chapter.id]);

    return result
        .map((row) => Question(
              row['id'] as int,
              row['label'] as String,
            ))
        .toList();
  }

   List<Answer> getAnswers(Question question){
    final result = db.select('SELECT * FROM answer where question_id = ?', [question.id]);

    return result
        .map((row) => Answer(
              row['id'] as int,
              row['label'] as String,
              (row['correct'] as int) == 0 ? false : true,
            ))
        .toList();
  }
}