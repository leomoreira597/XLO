enum UserType {PARTICULAR, PROFESSIONAL}

class User{

  User({this.id, this.name, this.eMail,  this.phone,  this.password,  this.type = UserType.PARTICULAR, this.createdAt });
  String? id;
  String? name;
  String? eMail;
  String? phone;
  String? password;
  UserType type;
  DateTime? createdAt;

  @override
  String toString() {
    return 'User{id: $id, name: $name, eMail: $eMail, phone: $phone, password: $password, type: $type, createdAt: $createdAt}';
  }
}