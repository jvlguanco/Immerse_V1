class UserModel {
  final String? id;
  final String name;
  final String email;
  final String phoneNo;
  final String password;

  const UserModel({
    this.id,
    required this.name,
    required this.email,
    required this.phoneNo,
    required this.password,
  });

  toJson(){
    return {
      'id': id,
      'name': name,
      'email': email,
      'phoneNo': phoneNo,
      'password': password,
    };
  }
}