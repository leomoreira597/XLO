import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';
import 'package:xlo_mobx/models/user.dart';
import 'package:xlo_mobx/reposttory/table_keys.dart';

class UserRepository{

  Future<void> singup(User user)async{
    final parseUser = ParseUser(user.eMail, user.password, user.eMail);
    parseUser.set<String?>(keyUserName, user.name);
    parseUser.set<String?>(keyUserPhone, user.phone);
    parseUser.set(keyUserType, user.type.index);

    await parseUser.signUp();
  }




}