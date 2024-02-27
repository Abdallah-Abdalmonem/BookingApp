class UserModel {
  String id;
  String email;
  bool isAdmin;
  UserModel({
    required this.id,
    required this.email,
    required this.isAdmin,
  });

  UserModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        email = json['email'],
        isAdmin = json['isAdmin'];

  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'isAdmin': isAdmin,
      };
}
