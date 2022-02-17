import 'package:mobx/mobx.dart';
import 'package:xlo_mobx/models/category.dart';

part 'create_store.g.dart';

class CreateStore = _CreateStore with _$CreateStore;

abstract class _CreateStore with Store {
  ObservableList images = ObservableList();

  @computed
  bool get imagesValid => images.isNotEmpty;

  String? get imagesError {
    if (imagesValid) {
      return null;
    }
    else{
      return 'Insira imagens';
    }

  }

  @observable
  Category? category;

  @action
  void setCategory(Category value) => category = value;

  @observable
  bool? hidePhone = false;

  @action
  void setHidePhone(bool? value) => hidePhone = value;
}
