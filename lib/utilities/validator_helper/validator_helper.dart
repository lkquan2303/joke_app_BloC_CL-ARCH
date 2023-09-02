class ValidatorHelper {
  bool isEmail(String email) {
    final emailRegex = RegExp(
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
    return emailRegex.hasMatch(email);
  }

  bool isPassword(String password) => password.length >= 8;

  bool isName(String name) {
    final nameRegex = RegExp(r'^[a-z A-Z,.\-]+$');
    return nameRegex.hasMatch(name);
  }

  bool isAge(String ageString) {
    try {
      final age = int.parse(ageString);
      return age >= 0 && age <= 100;
    } on Exception catch (_) {
      return false;
    }
  }
}
