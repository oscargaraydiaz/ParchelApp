import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:parchelapp/Models/mystery_model.dart';

class MysteryController {
  static final List<Mystery> mysteryList = [];

  static Future<List<Mystery>> getMystery() async {
    CollectionReference mysteryRef =
        FirebaseFirestore.instance.collection('mysteries');

    QuerySnapshot mystery = await mysteryRef.get();

    for (var element in mystery.docs) {
      String content = element.get('content').toString();
      String answer = element.get('answer').toString();

      Mystery mystery = Mystery(content, answer);
      mysteryList.add(mystery);
    }

    return mysteryList;
  }

}
