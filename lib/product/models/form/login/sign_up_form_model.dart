class SignUpFormModel {
  String email;
  String password;
  String passwordAgain;
  bool isInfosApproved;
  SignUpFormModel({
    required this.email,
    required this.password,
    required this.passwordAgain,
    required this.isInfosApproved,
  });

  @override
  String toString() =>
      'SignUpFormModel(email: $email, password: $password, passwordAgain: $passwordAgain, isInfosApproved: $isInfosApproved)';
}
