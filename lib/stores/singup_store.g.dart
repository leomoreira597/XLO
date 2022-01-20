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
  Computed<bool>? _$emailValidComputed;

  @override
  bool get emailValid =>
      (_$emailValidComputed ??= Computed<bool>(() => super.emailValid,
              name: '_SingupStore.emailValid'))
          .value;
  Computed<bool>? _$phoneValidComputed;

  @override
  bool get phoneValid =>
      (_$phoneValidComputed ??= Computed<bool>(() => super.phoneValid,
              name: '_SingupStore.phoneValid'))
          .value;
  Computed<bool>? _$pass1ValidComputed;

  @override
  bool get pass1Valid =>
      (_$pass1ValidComputed ??= Computed<bool>(() => super.pass1Valid,
              name: '_SingupStore.pass1Valid'))
          .value;
  Computed<bool>? _$pass2ValidComputed;

  @override
  bool get pass2Valid =>
      (_$pass2ValidComputed ??= Computed<bool>(() => super.pass2Valid,
              name: '_SingupStore.pass2Valid'))
          .value;
  Computed<bool>? _$isFormValidComputed;

  @override
  bool get isFormValid =>
      (_$isFormValidComputed ??= Computed<bool>(() => super.isFormValid,
              name: '_SingupStore.isFormValid'))
          .value;
  Computed<dynamic>? _$singupPressedComputed;

  @override
  dynamic get singupPressed =>
      (_$singupPressedComputed ??= Computed<dynamic>(() => super.singupPressed,
              name: '_SingupStore.singupPressed'))
          .value;

  final _$nameAtom = Atom(name: '_SingupStore.name');

  @override
  String? get name {
    _$nameAtom.reportRead();
    return super.name;
  }

  @override
  set name(String? value) {
    _$nameAtom.reportWrite(value, super.name, () {
      super.name = value;
    });
  }

  final _$emailAtom = Atom(name: '_SingupStore.email');

  @override
  String? get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String? value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  final _$phoneAtom = Atom(name: '_SingupStore.phone');

  @override
  String? get phone {
    _$phoneAtom.reportRead();
    return super.phone;
  }

  @override
  set phone(String? value) {
    _$phoneAtom.reportWrite(value, super.phone, () {
      super.phone = value;
    });
  }

  final _$pass1Atom = Atom(name: '_SingupStore.pass1');

  @override
  String? get pass1 {
    _$pass1Atom.reportRead();
    return super.pass1;
  }

  @override
  set pass1(String? value) {
    _$pass1Atom.reportWrite(value, super.pass1, () {
      super.pass1 = value;
    });
  }

  final _$pass2Atom = Atom(name: '_SingupStore.pass2');

  @override
  String? get pass2 {
    _$pass2Atom.reportRead();
    return super.pass2;
  }

  @override
  set pass2(String? value) {
    _$pass2Atom.reportWrite(value, super.pass2, () {
      super.pass2 = value;
    });
  }

  final _$loadingAtom = Atom(name: '_SingupStore.loading');

  @override
  bool get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
    });
  }

  final _$_singupAsyncAction = AsyncAction('_SingupStore._singup');

  @override
  Future<void> _singup() {
    return _$_singupAsyncAction.run(() => super._singup());
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
  void setEmail(String value) {
    final _$actionInfo = _$_SingupStoreActionController.startAction(
        name: '_SingupStore.setEmail');
    try {
      return super.setEmail(value);
    } finally {
      _$_SingupStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPhone(String value) {
    final _$actionInfo = _$_SingupStoreActionController.startAction(
        name: '_SingupStore.setPhone');
    try {
      return super.setPhone(value);
    } finally {
      _$_SingupStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPass1(String value) {
    final _$actionInfo = _$_SingupStoreActionController.startAction(
        name: '_SingupStore.setPass1');
    try {
      return super.setPass1(value);
    } finally {
      _$_SingupStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPass2(String value) {
    final _$actionInfo = _$_SingupStoreActionController.startAction(
        name: '_SingupStore.setPass2');
    try {
      return super.setPass2(value);
    } finally {
      _$_SingupStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
name: ${name},
email: ${email},
phone: ${phone},
pass1: ${pass1},
pass2: ${pass2},
loading: ${loading},
validName: ${validName},
emailValid: ${emailValid},
phoneValid: ${phoneValid},
pass1Valid: ${pass1Valid},
pass2Valid: ${pass2Valid},
isFormValid: ${isFormValid},
singupPressed: ${singupPressed}
    ''';
  }
}
