// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'singup_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SingupStore on _SingupStore, Store {
  Computed<bool>? _$validNameComputed;

  @override
  bool get validName => (_$validNameComputed ??=
          Computed<bool>(() => super.validName, name: '_SingupStore.validName'))
      .value;

  final _$nameAtom = Atom(name: '_SingupStore.name');

  @override
  String get name {
    _$nameAtom.reportRead();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.reportWrite(value, super.name, () {
      super.name = value;
    });
  }

  final _$_SingupStoreActionController = ActionController(name: '_SingupStore');

  @override
  void setName(String value) {
    final _$actionInfo = _$_SingupStoreActionController.startAction(
        name: '_SingupStore.setName');
    try {
      return super.setName(value);
    } finally {
      _$_SingupStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
name: ${name},
validName: ${validName}
    ''';
  }
}
