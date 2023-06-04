import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:parchelapp/Models/challenge_model.dart';

class ChallengeController {
  static final List<Challenge> familyList = [];
  static final List<Challenge> friendsList = [];
  static final List<Challenge> hotList = [];

  static Future<List<Challenge>> getFamilyChallenge() async {
    CollectionReference challengeRef =
        FirebaseFirestore.instance.collection('challenges');

    QuerySnapshot challenges = await challengeRef.get();

    for (var element in challenges.docs) {
      if (element.get('category').toString() == 'family') {
        String type = element.get('type').toString();
        String content = element.get('content').toString();
        String category = element.get('category').toString();

        Challenge challenge = Challenge(type, content, category);

        familyList.add(challenge);
      }
    }

    return familyList;
  }

  static Future<List<Challenge>> getFriendsChallenge() async {
    CollectionReference challengeRef =
        FirebaseFirestore.instance.collection('challenges');

    QuerySnapshot challenges = await challengeRef.get();

    for (var element in challenges.docs) {
      if (element.get('category').toString() == 'friends') {
        String type = element.get('type').toString();
        String content = element.get('content').toString();
        String category = element.get('category').toString();
        Challenge challenge = Challenge(type, content, category);
        friendsList.add(challenge);
      }
    }
    return friendsList;
  }

  static Future<List<Challenge>> getHotChallenge() async {
    CollectionReference challengeRef =
        FirebaseFirestore.instance.collection('challenges');

    QuerySnapshot challenges = await challengeRef.get();

    for (var element in challenges.docs) {
      if (element.get('category').toString() == 'hot') {
        String type = element.get('type').toString();
        String content = element.get('content').toString();
        String category = element.get('category').toString();

        Challenge challenge = Challenge(type, content, category);

        hotList.add(challenge);
      }
    }

    return hotList;
  }
}
