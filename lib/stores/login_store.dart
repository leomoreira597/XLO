import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
import 'package:xlo_mobx/helperes/extensions.dart';
import 'package:xlo_mobx/reposttory/user_repository.dart';
import 'package:xlo_mobx/stores/user_manager_store.dart';

part 'login_store.g.dart';

class LoginStore = _LoginStore with _$LoginStore;

abstract class _LoginStore with Store{

  @observable
  String? eMail;

  @action
  void setEmail(String value) => eMail = value;

  @computed
  bool get emailValid => eMail != null && eMail!.isEmailValid();
  String? get emailError => eMail == null || emailValid ?  null : 'E-mail invalido';

  @observable
  String? password;

  @action
  void setPassword(String value) => password = value;

  @computed
  bool get passwordValid => password != null && password!.length >= 4;
  String? get passWordError => password == null || passwordValid ? null : 'Senha Invalida';

  @computed
  dynamic get loginPressed => (emailValid && passwordValid && !loading) ? login : nada;

  @observable
  bool loading = false;

  @observable
  String? error;

  @action
  Future<void> login()async{
    loading = true;
    try {
      final user = await UserRepository().loginWithEmail(eMail, password);
      GetIt.I<UserManagerStore>().setUser(user);
    }
    catch (e){
      error = e as String?;
    }
    loading = false;
  }


  @action
  void nada(){
    return;
  }
}