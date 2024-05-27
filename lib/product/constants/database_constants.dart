enum DBFields {
  users(path: "users"),
  notifications(path: "notifications");

  final String path;

  const DBFields({required this.path});
}
