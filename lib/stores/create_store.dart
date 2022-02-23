import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
import 'package:xlo_mobx/models/ad.dart';
import 'package:xlo_mobx/models/address.dart';
import 'package:xlo_mobx/models/category.dart';
import 'package:xlo_mobx/reposttory/ad_repository.dart';
import 'package:xlo_mobx/stores/cep_store.dart';
import 'package:xlo_mobx/stores/user_manager_store.dart';

part 'create_store.g.dart';

class CreateStore = _CreateStore with _$CreateStore;

abstract class _CreateStore with Store {
  ObservableList images = ObservableList();

  @computed
  bool get imagesValid => images.isNotEmpty;

  String? get imagesError {
    if (!showErrors || imagesValid) {
      return null;
    }
    else{
      return 'Insira imagens';
    }

  }

  @observable
  String title = '';

  @action
  void setTitle(String value) => title = value;

  @computed
  bool get titleValid => title.length >= 6;
  String? get titleError{
    if(!showErrors || titleValid) {
      return null;
    }
    else if(title.isEmpty) {
      return 'Campo Obrigatório';
    }
    else {
      return 'Título muito curto';
    }
  }

  @observable
  String description = '';

  @action
  void setDescription(String value) => description = value;

  @computed
  bool get descriptionValid => description.length >= 20;
  String? get descriptionError{
    if(!showErrors || descriptionValid){
      return null;
    }
    else if(description.isEmpty){
      return 'Campo Obrigatório';
    }
    else{
      return 'Descrição muito curta';
    }
  }

  @observable
  Category? category;

  @action
  void setCategory(Category value) => category = value;

  @computed
  bool get categoryValid => category != null;
  String? get categoryError{
    if(!showErrors || categoryValid){
      return null;
    }
    else{
      return 'Campo obrigatorio';
    }
  }

  CepStore cepStore = CepStore();

  @computed
  Address? get address => cepStore!.address;
  bool get addressValid => address != null;
  String? get addressError {
    if(!showErrors || addressValid){
      return null;
    }
    else{
      return 'Campo Obrigatorio';
    }
  }

  @observable
  String priceText = '';

  @action
  void setPrice(String value) => priceText = value;

  @computed
  num? get price{
    if(priceText.contains(',')){
      return num.tryParse(priceText.replaceAll(RegExp('[^0-9]'), ''))! / 100;
    }
    else{
      return num.tryParse(priceText);
    }
  }
  bool get priceValid => price != null && price! <= 9999999;
  String? get priceError{
    if(!showErrors || priceValid){
      return null;
    }
    else if(priceText.isEmpty){
      return 'O campo é Obrigatorio';
    }
    else{
      return 'Preço inválido';
    }
  }

  @observable
  bool? hidePhone = false;

  @action
  void setHidePhone(bool? value) => hidePhone = value;

  @computed
  bool get formValid => imagesValid && titleValid && descriptionValid &&
    categoryValid && addressValid && priceValid;


  @computed
  dynamic get senPressed => formValid ? _send : null;

  @observable
  bool showErrors = false;

  @action
  void invalidSendPressed() => showErrors = true;

  void _send(){
    final ad =  AD();
    ad.title = title;
    ad.description = description;
    ad.category = category;
    ad.price = price;
    ad.images = images;
    ad.hidePhone = hidePhone;
    ad.address = address;
    ad.user = GetIt.I<UserManagerStore>().user;

    AdRepository().save;
  }
}
