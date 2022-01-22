import 'package:mobx/mobx.dart';
import 'package:xlo_mobx/helperes/extensions.dart';

part 'singup_store.g.dart';

class SingupStore = _SingupStore with _$SingupStore;

abstract class _SingupStore with Store{

  @observable
  String? name;

  @action
  void setName(String value) => name = value;

  @computed
  bool get validName => name!= null &&  name!.length > 6;
  String? get nameError{
   if(name == null || validName){
     return null ;
   }
   else if (name!.isEmpty){
     return 'Campo obrigatório';
   }
   else{
     return 'Nome muito curto';
   }
  }

  @observable
  String? email;

  @action
  void setEmail(String value) => email = value;

  @computed
  bool get emailValid => email != null && email!.isEmailValid();
  String? get emailError{
    if(email == null || emailValid){
      return null;
    }
    else if(email!.isEmpty){
      return 'Campo obrigatório';
    }
    else{
      return 'E-mail invalido';
    }
  }

  @observable
  String? phone;

  @action
  void setPhone(String value) => phone = value;

  @computed
  bool get phoneValid => phone != null && phone!.length >= 14;
  String? get phoneError{
    if(phone == null || phoneValid){
      return null;
    }
    else if(phone!.isEmpty){
      return 'Campo Obrigatório';
    }
    else {
      return 'Celular inválido';
    }
  }

  @observable
  String? pass1;

  @action
  void setPass1(String value) => pass1 = value;

  @computed
  bool get pass1Valid => pass1 != null && pass1!.length >= 6;
  String? get pass1Error{
    if(pass1 == null || pass1Valid){
      return null;
    }
    else if(pass1!.isEmpty){
      return 'Campo Obrigatório';
    }
    else {
      return 'Senha muito curta';
    }
  }

  @observable
  String? pass2;

  @action
  void setPass2(String value) => pass2 = value;

  @computed
  bool get pass2Valid => pass2 != null && pass2 == pass1;
  String? get pass2Error{
    if(pass2 == null || pass2Valid){
      return null;
    }
    else if(pass2!.isEmpty){
      return 'Campo Obrigatório';
    }
    else {
      return 'Senhas não concidem';
    }
  }

  @computed
  bool get isFormValid => validName && emailValid && phoneValid && pass1Valid && pass2Valid;

  @computed
  dynamic get singupPressed => (isFormValid && !loading) ? _singup : retorna;

  @observable
  bool loading = false;

  @action
  Future<void> _singup() async{
    loading = true;
    await Future.delayed(const Duration(seconds: 3));

    loading = false;
  }

  @action
  void retorna(){
    return;
  }


}