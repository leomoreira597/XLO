enum UserType {PARTICULAR, PROFESSIONAL}

class User{

  User({required this.name, required this.eMail, required this.phone, required this.password,  this.type = UserType.PARTICULAR });

  String? name;
  String? eMail;
  String? phone;
  String? password;
  UserType type;

}