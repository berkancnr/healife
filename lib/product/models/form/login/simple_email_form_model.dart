class SimpleEmailFormModel {
  String email;
  bool isInfosApproved;
  SimpleEmailFormModel({
    required this.email,
    required this.isInfosApproved,
  });

  @override
  String toString() => 'SimpleEmailFormModel(email: $email, isInfosApproved: $isInfosApproved)';
}
