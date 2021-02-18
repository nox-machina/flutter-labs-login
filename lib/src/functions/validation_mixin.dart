class ValidationMixin {
  String validateEmail(String value) {
    var isValid = RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(value);
    if (!isValid) {
      return "Enter a valid email";
    } else {
      return null;
    }
  }

  String validatePassword(String val) {
    if (val.length <= 5) {
      return "Whoa! Password must be at least 6 characters long.";
    } else {
      return null;
    }
  }
}
