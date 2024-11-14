String? validateName(String? value) {
  if (value == null || value.isEmpty) {
    return 'Name required';
  }
  return null;
}


String? validateEmail(String? value) {
  if (value == null || value.isEmpty) {
  } else if (!RegExp(
          r'^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
      .hasMatch(value)) {
    return 'Invalid email address';
  }
  return null;
}

  String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password required';
    } else if (!RegExp(
            r'^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(value)) {
      return 'Password must have at least 8 characters or more with one uppercase and one special character.';
    }
      return null;
}

  String? validateConfirmPassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please repite password';
    } else if (validatePassword(value).toString() != value) {
      return 'Passwords do not match';
    }
      return null;
}