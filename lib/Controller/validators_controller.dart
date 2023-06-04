import 'package:intl/intl.dart';

class ValidatorController{

  static bool isValidEmail(String email){
    return RegExp(r'[a-zA-Z0-9.a-zA-Z0-9.!#$%&*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+').hasMatch(email);
  }

  static bool validateUsername(String username) {
    return !username.contains(' ');
  }

  static bool validateMinimumAge(String dateOfBirth) {
    final currentDate = DateTime.now();
    final dateFormat = DateFormat('yyyy/MM/dd');
    final parsedDate = dateFormat.parseStrict(dateOfBirth);
    var age = currentDate.year - parsedDate.year;

    if (currentDate.month < parsedDate.month ||
        (currentDate.month == parsedDate.month && currentDate.day < parsedDate.day)) {
      age--;
    }

    return age >= 18;
  }


}