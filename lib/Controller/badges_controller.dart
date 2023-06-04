import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:parchelapp/Models/badges_model.dart';

class BadgesController {
  static final List<Badges> badgesList = [];

  static Future<List<Badges>> getBadges() async {
    CollectionReference badgesRef =
    FirebaseFirestore.instance.collection('badges');

    QuerySnapshot badges = await badgesRef.get();

    for (var element in badges.docs) {
      String title = element.get('title').toString();
      String logo = element.get('logo').toString();

      Badges badge = Badges(title, logo);
      badgesList.add(badge);
    }

    return badgesList;
  }
}