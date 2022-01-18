import 'package:mobx/mobx.dart';

part 'singup_store.g.dart';

class SingupStore = _SingupStore with _$SingupStore;

abstract class _SingupStore with Store{

  @observable
  String? name;

  @action
  void setName(String value) => name = value;

  @computed
  bool get validName => name!.length > 6;
  String get nameError{
   if(name == null || validName){
     return '' ;
   }
   else if (name!.isEmpty){
     return 'Campo obrigatorio';
   }
   else{
     return 'Nome muito curto';
   }
  }

}