class SignInFormModel {
  String email;
  String password;
  bool isInfosApproved;
  SignInFormModel({
    required this.email,
    required this.password,
    required this.isInfosApproved,
  });

  @override
  String toString() => 'SignInFormModel(email: $email, password: $password, isInfosApproved: $isInfosApproved)';
}