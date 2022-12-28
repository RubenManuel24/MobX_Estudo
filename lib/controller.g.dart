// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$Controller on ControllerBase, Store {
  Computed<String>? _$emailSenhaComputed;

  @override
  String get emailSenha =>
      (_$emailSenhaComputed ??= Computed<String>(() => super.emailSenha,
              name: 'ControllerBase.emailSenha'))
          .value;
  Computed<bool>? _$validarCamposComputed;

  @override
  bool get validarCampos =>
      (_$validarCamposComputed ??= Computed<bool>(() => super.validarCampos,
              name: 'ControllerBase.validarCampos'))
          .value;

  late final _$emailAtom = Atom(name: 'ControllerBase.email', context: context);

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  late final _$senhaAtom = Atom(name: 'ControllerBase.senha', context: context);

  @override
  String get senha {
    _$senhaAtom.reportRead();
    return super.senha;
  }

  @override
  set senha(String value) {
    _$senhaAtom.reportWrite(value, super.senha, () {
      super.senha = value;
    });
  }

  late final _$carregarAtom =
      Atom(name: 'ControllerBase.carregar', context: context);

  @override
  bool get carregar {
    _$carregarAtom.reportRead();
    return super.carregar;
  }

  @override
  set carregar(bool value) {
    _$carregarAtom.reportWrite(value, super.carregar, () {
      super.carregar = value;
    });
  }

  late final _$logadoAtom =
      Atom(name: 'ControllerBase.logado', context: context);

  @override
  bool get logado {
    _$logadoAtom.reportRead();
    return super.logado;
  }

  @override
  set logado(bool value) {
    _$logadoAtom.reportWrite(value, super.logado, () {
      super.logado = value;
    });
  }

  late final _$logarAsyncAction =
      AsyncAction('ControllerBase.logar', context: context);

  @override
  Future<void> logar() {
    return _$logarAsyncAction.run(() => super.logar());
  }

  late final _$ControllerBaseActionController =
      ActionController(name: 'ControllerBase', context: context);

  @override
  void setEmail(String valor) {
    final _$actionInfo = _$ControllerBaseActionController.startAction(
        name: 'ControllerBase.setEmail');
    try {
      return super.setEmail(valor);
    } finally {
      _$ControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setSenha(String valor) {
    final _$actionInfo = _$ControllerBaseActionController.startAction(
        name: 'ControllerBase.setSenha');
    try {
      return super.setSenha(valor);
    } finally {
      _$ControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
email: ${email},
senha: ${senha},
carregar: ${carregar},
logado: ${logado},
emailSenha: ${emailSenha},
validarCampos: ${validarCampos}
    ''';
  }
}
