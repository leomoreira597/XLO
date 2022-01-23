import 'package:mobx/mobx.dart';
import 'package:xlo_mobx/helperes/extensions.dart';

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

  @action
  Future<void> login()async{
    loading = true;

    await Future.delayed(Duration(seconds: 3));

    loading = false;
  }


  @action
  void nada(){
    return;
  }
}