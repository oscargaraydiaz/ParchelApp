import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:parchelapp/Models/riddle_model.dart';

class RiddleController {
  static final List<Riddle> riddleList = [];

  static Future<List<Riddle>> getRiddle() async {
    CollectionReference riddleRef =
        FirebaseFirestore.instance.collection('riddles');

    QuerySnapshot riddles = await riddleRef.get();

    for (var element in riddles.docs) {
      String content = element.get('content').toString();
      String answer = element.get('answer').toString();

      Riddle riddle = Riddle(content, answer);
      riddleList.add(riddle);
    }

    return riddleList;
  }
}
