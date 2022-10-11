String? validateEmail(value) {
  Pattern patten =r"^[a-z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
  RegExp regex = new RegExp(patten.toString());
  if (value.length == 0)
    return "email is required";
  else if (!regex.hasMatch(value))
    return 'please enter valid email ';
  else if (value.length == 1)
  return null;
}

String? nameValidation(value) {
  String pattern = r'(^[a-zA-Z ]*$)';
  RegExp regExp = new RegExp(pattern);
  if (value.length == 0) {
    return "please enter your name";
  } else if (!regExp.hasMatch(value)) {
    return "Name must be a-z and A-Z";
  }
  return null;
}
String? otpValidation(value) {

  if (value.length < 6  ) {
    return "please fill all field";
  }
  return null;
}

String? validatePassword(value) {
  bool hasUppercase = value.contains(new RegExp(r'[A-Z]'));
  bool hasDigits = value.contains(new RegExp(r'[0-9]'));
  bool hasLowercase = value.contains(new RegExp(r'[a-z]'));
  bool hasSpecialCharacters = value.contains(new RegExp(r'[!@#$%^&*(),.?":{}|<>]'));
  var minLength=8;
  bool hasMinLength = value.length >= minLength;
  print(value);
  if (value.isEmpty) {
    return 'please enter password';
  }
  if(!hasLowercase){
    return 'atleast need one lowercase character,';
  }if(!hasDigits){
    return 'atleast need one digit,';
  }if(!hasUppercase){
    return 'atleast need one hasUppercase character,';
  }if(!hasSpecialCharacters){
    return 'atleast need SpecialCharacters,';
  }if(!hasMinLength){
    return 'password must be 8 character long,';
  }

}

String? confirmPasswordValidation(conformPasswordValue,newPasswordValue) {
  if(newPasswordValue.isEmpty||newPasswordValue==null){
    return 'please fill the new password field';
  }
  if (conformPasswordValue.isEmpty) {
    return "please conform your password";
  } else if (conformPasswordValue !=newPasswordValue) {
    return "field is not matched with new password";
  } else {
    return null;
  }
}

String? validateMobile(value) {
  String patttern = r'^(?:[+0]9)?[0-9]{10}$';
  RegExp regExp = new RegExp(patttern);
  if (value.length == 0) {
    return 'Please enter mobile number';
  } else if (!regExp.hasMatch(value)) {
    return 'Please enter valid mobile number';
  }
  return null;
}
String? validateAccessCode(value) {
  String pattern = r'(^[0-9]*$)';
  RegExp regExp = new RegExp(pattern);
  if (value.length == 0) {
    return "AccessCode is Required";
  } else if (value.length != 6) {
    return "AccessCode must 6 digits";
  } else if (!regExp.hasMatch(value)) {
    return "AccessCode must be digits";
  }
  return null;
}
