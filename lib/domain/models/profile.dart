class Profile {
  final int? id;
  final String? username;
  final String? name;

  Profile({
    this.id,
    this.username,
    this.name,
  });

  factory Profile.fromJson(Map<String, dynamic> json) {
    return Profile(
      id: json['id'],
      username: json['username'],
      name: json['name'],
    );
  }
}
