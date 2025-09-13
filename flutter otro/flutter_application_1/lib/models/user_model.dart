class UserModel {
  final int id;
  final String name;
  final String username;
  final String email;
  UserModel({
    required this.id,
    required this.name,
    required this.email,
    required this.username,
  });
  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'], 
      name: json['name'], 
      email: json['email'], 
      username: json['username'],
    );
  }
}