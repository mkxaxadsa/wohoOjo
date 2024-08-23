import 'package:hive_flutter/hive_flutter.dart';
import 'package:ojo/data/models/quiz_model.dart';

class HiveHelper {
  static Future<void> init() async {
    await Hive.initFlutter();
    _box = await Hive.openBox("APP_BOX");
  }

  static late final Box _box;

  static List<Quiz> get quizzes {
    final resp = List.from(_box.get("quizzes")??[]);
    final res = List<Map>.from(resp.map((e) => Map.from(e))).map((e) => Quiz.fromMap(Map<String,dynamic>.from(e))).toList();
    return res;
  }

  static Future<void> saveQuiz(Quiz quiz) async {
    await _box.put("quizzes", [...quizzes,quiz].map((e) => e.toMap()).toList());
  }
}
